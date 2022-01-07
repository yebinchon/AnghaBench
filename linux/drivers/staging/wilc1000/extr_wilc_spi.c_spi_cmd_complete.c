
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc_spi {int crc_off; } ;
struct wilc {struct wilc_spi* bus_data; int dev; } ;
struct spi_device {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int BIT (int) ;
 int DATA_PKT_SZ ;
 int NUM_CRC_BYTES ;
 int NUM_DATA_BYTES ;
 int NUM_DATA_HDR_BYTES ;
 int NUM_DUMMY_BYTES ;
 int NUM_RSP_BYTES ;
 int NUM_SKIP_BYTES ;
 int N_FAIL ;
 int N_OK ;
 int N_RESET ;
 int crc7 (int,int const*,int) ;
 int dev_err (int *,char*,...) ;
 struct spi_device* to_spi_device (int ) ;
 scalar_t__ wilc_spi_rx (struct wilc*,int*,int) ;
 scalar_t__ wilc_spi_tx_rx (struct wilc*,int*,int*,int) ;

__attribute__((used)) static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
       u8 clockless)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 struct wilc_spi *spi_priv = wilc->bus_data;
 u8 wb[32], rb[32];
 u8 wix, rix;
 u32 len2;
 u8 rsp;
 int len = 0;
 int result = N_OK;
 int retry;
 u8 crc[2];

 wb[0] = cmd;
 switch (cmd) {
 case 130:
  wb[1] = (u8)(adr >> 16);
  wb[2] = (u8)(adr >> 8);
  wb[3] = (u8)adr;
  len = 5;
  break;

 case 134:
  wb[1] = (u8)(adr >> 8);
  if (clockless == 1)
   wb[1] |= BIT(7);
  wb[2] = (u8)adr;
  wb[3] = 0x00;
  len = 5;
  break;

 case 128:
  wb[1] = 0x00;
  wb[2] = 0x00;
  wb[3] = 0x00;
  len = 5;
  break;

 case 132:
  wb[1] = 0x00;
  wb[2] = 0x00;
  wb[3] = 0x00;
  len = 5;
  break;

 case 131:
  wb[1] = 0xff;
  wb[2] = 0xff;
  wb[3] = 0xff;
  len = 5;
  break;

 case 135:
 case 136:
  wb[1] = (u8)(adr >> 16);
  wb[2] = (u8)(adr >> 8);
  wb[3] = (u8)adr;
  wb[4] = (u8)(sz >> 8);
  wb[5] = (u8)(sz);
  len = 7;
  break;

 case 137:
 case 138:
  wb[1] = (u8)(adr >> 16);
  wb[2] = (u8)(adr >> 8);
  wb[3] = (u8)adr;
  wb[4] = (u8)(sz >> 16);
  wb[5] = (u8)(sz >> 8);
  wb[6] = (u8)(sz);
  len = 8;
  break;

 case 133:
  wb[1] = (u8)(adr >> 8);
  if (clockless == 1)
   wb[1] |= BIT(7);
  wb[2] = (u8)(adr);
  wb[3] = b[3];
  wb[4] = b[2];
  wb[5] = b[1];
  wb[6] = b[0];
  len = 8;
  break;

 case 129:
  wb[1] = (u8)(adr >> 16);
  wb[2] = (u8)(adr >> 8);
  wb[3] = (u8)(adr);
  wb[4] = b[3];
  wb[5] = b[2];
  wb[6] = b[1];
  wb[7] = b[0];
  len = 9;
  break;

 default:
  result = N_FAIL;
  break;
 }

 if (result != N_OK)
  return result;

 if (!spi_priv->crc_off)
  wb[len - 1] = (crc7(0x7f, (const u8 *)&wb[0], len - 1)) << 1;
 else
  len -= 1;







 if (cmd == 131 ||
     cmd == 128 ||
     cmd == 132) {
  len2 = len + ((1) + (2) + (3));
 } else if (cmd == 134 || cmd == 130) {
  int tmp = (2) + (1) + (4)
   + (3);
  if (!spi_priv->crc_off)
   len2 = len + tmp + (2);
  else
   len2 = len + tmp;
 } else {
  len2 = len + ((2) + (3));
 }


 if (len2 > ARRAY_SIZE(wb)) {
  dev_err(&spi->dev, "spi buffer size too small (%d) (%zu)\n",
   len2, ARRAY_SIZE(wb));
  return N_FAIL;
 }

 for (wix = len; wix < len2; wix++)
  wb[wix] = 0;
 rix = len;

 if (wilc_spi_tx_rx(wilc, wb, rb, len2)) {
  dev_err(&spi->dev, "Failed cmd write, bus error...\n");
  return N_FAIL;
 }




 if (cmd == 131 || cmd == 128 || cmd == 132)
  rix++;

 rsp = rb[rix++];

 if (rsp != cmd) {
  dev_err(&spi->dev,
   "Failed cmd response, cmd (%02x), resp (%02x)\n",
   cmd, rsp);
  return N_FAIL;
 }




 rsp = rb[rix++];
 if (rsp != 0x00) {
  dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
   rsp);
  return N_FAIL;
 }

 if (cmd == 134 || cmd == 130 ||
     cmd == 136 || cmd == 138) {



  retry = 100;
  do {




   if (rix < len2) {
    rsp = rb[rix++];
   } else {
    retry = 0;
    break;
   }
   if (((rsp >> 4) & 0xf) == 0xf)
    break;
  } while (retry--);

  if (retry <= 0) {
   dev_err(&spi->dev,
    "Error, data read response (%02x)\n", rsp);
   return N_RESET;
  }
 }

 if (cmd == 134 || cmd == 130) {



  if ((rix + 3) < len2) {
   b[0] = rb[rix++];
   b[1] = rb[rix++];
   b[2] = rb[rix++];
   b[3] = rb[rix++];
  } else {
   dev_err(&spi->dev,
    "buffer overrun when reading data.\n");
   return N_FAIL;
  }

  if (!spi_priv->crc_off) {



   if ((rix + 1) < len2) {
    crc[0] = rb[rix++];
    crc[1] = rb[rix++];
   } else {
    dev_err(&spi->dev,
     "buffer overrun when reading crc.\n");
    return N_FAIL;
   }
  }
 } else if ((cmd == 136) || (cmd == 138)) {
  int ix;


  for (ix = 0; (rix < len2) && (ix < sz); )
   b[ix++] = rb[rix++];

  sz -= ix;

  if (sz > 0) {
   int nbytes;

   if (sz <= (DATA_PKT_SZ - ix))
    nbytes = sz;
   else
    nbytes = DATA_PKT_SZ - ix;




   if (wilc_spi_rx(wilc, &b[ix], nbytes)) {
    dev_err(&spi->dev,
     "Failed block read, bus err\n");
    return N_FAIL;
   }




   if (!spi_priv->crc_off && wilc_spi_rx(wilc, crc, 2)) {
    dev_err(&spi->dev,
     "Failed block crc read, bus err\n");
    return N_FAIL;
   }

   ix += nbytes;
   sz -= nbytes;
  }





  while (sz > 0) {
   int nbytes;

   if (sz <= DATA_PKT_SZ)
    nbytes = sz;
   else
    nbytes = DATA_PKT_SZ;
   retry = 10;
   do {
    if (wilc_spi_rx(wilc, &rsp, 1)) {
     dev_err(&spi->dev,
      "Failed resp read, bus err\n");
     result = N_FAIL;
     break;
    }
    if (((rsp >> 4) & 0xf) == 0xf)
     break;
   } while (retry--);

   if (result == N_FAIL)
    break;




   if (wilc_spi_rx(wilc, &b[ix], nbytes)) {
    dev_err(&spi->dev,
     "Failed block read, bus err\n");
    result = N_FAIL;
    break;
   }




   if (!spi_priv->crc_off && wilc_spi_rx(wilc, crc, 2)) {
    dev_err(&spi->dev,
     "Failed block crc read, bus err\n");
    result = N_FAIL;
    break;
   }

   ix += nbytes;
   sz -= nbytes;
  }
 }
 return result;
}
