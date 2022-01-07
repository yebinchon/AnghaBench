
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int t ;
struct wl12xx_spi_glue {int dev; } ;
struct spi_transfer {int* tx_buf; int len; } ;
struct spi_message {int* tx_buf; int len; } ;
struct spi_device {int mode; } ;
struct device {int parent; } ;
typedef int m ;


 int GFP_KERNEL ;
 int HW_ACCESS_WSPI_FIXED_BUSY_LEN ;
 int HW_ACCESS_WSPI_INIT_CMD_MASK ;
 int SPI_CS_HIGH ;
 int WSPI_INIT_CMD_CRC_LEN ;
 int WSPI_INIT_CMD_CS ;
 int WSPI_INIT_CMD_DIS_FIXEDBUSY ;
 int WSPI_INIT_CMD_END ;
 int WSPI_INIT_CMD_EN_FIXEDBUSY ;
 int WSPI_INIT_CMD_FIXEDBUSY_LEN ;
 int WSPI_INIT_CMD_IOD ;
 int WSPI_INIT_CMD_IP ;
 int WSPI_INIT_CMD_LEN ;
 int WSPI_INIT_CMD_START ;
 int WSPI_INIT_CMD_TX ;
 int WSPI_INIT_CMD_WS ;
 int WSPI_INIT_CMD_WSPI ;
 int __swab32s (int *) ;
 int crc7_be (int ,int*,int ) ;
 int dev_err (int ,char*) ;
 struct wl12xx_spi_glue* dev_get_drvdata (int ) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_transfer*) ;
 int spi_message_init (struct spi_transfer*) ;
 int spi_sync (struct spi_device*,struct spi_transfer*) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static void wl12xx_spi_init(struct device *child)
{
 struct wl12xx_spi_glue *glue = dev_get_drvdata(child->parent);
 struct spi_transfer t;
 struct spi_message m;
 struct spi_device *spi = to_spi_device(glue->dev);
 u8 *cmd = kzalloc(WSPI_INIT_CMD_LEN, GFP_KERNEL);

 if (!cmd) {
  dev_err(child->parent,
   "could not allocate cmd for spi init\n");
  return;
 }

 memset(&t, 0, sizeof(t));
 spi_message_init(&m);





 cmd[0] = 0xff;
 cmd[1] = 0xff;
 cmd[2] = WSPI_INIT_CMD_START | WSPI_INIT_CMD_TX;
 cmd[3] = 0;
 cmd[4] = 0;
 cmd[5] = HW_ACCESS_WSPI_INIT_CMD_MASK << 3;
 cmd[5] |= HW_ACCESS_WSPI_FIXED_BUSY_LEN & WSPI_INIT_CMD_FIXEDBUSY_LEN;

 cmd[6] = WSPI_INIT_CMD_IOD | WSPI_INIT_CMD_IP | WSPI_INIT_CMD_CS
  | WSPI_INIT_CMD_WSPI | WSPI_INIT_CMD_WS;

 if (HW_ACCESS_WSPI_FIXED_BUSY_LEN == 0)
  cmd[6] |= WSPI_INIT_CMD_DIS_FIXEDBUSY;
 else
  cmd[6] |= WSPI_INIT_CMD_EN_FIXEDBUSY;

 cmd[7] = crc7_be(0, cmd+2, WSPI_INIT_CMD_CRC_LEN) | WSPI_INIT_CMD_END;





 __swab32s((u32 *)cmd);
 __swab32s((u32 *)cmd+1);

 t.tx_buf = cmd;
 t.len = WSPI_INIT_CMD_LEN;
 spi_message_add_tail(&t, &m);

 spi_sync(to_spi_device(glue->dev), &m);




 spi->mode ^= SPI_CS_HIGH;
 memset(&m, 0, sizeof(m));
 spi_message_init(&m);

 cmd[0] = 0xff;
 cmd[1] = 0xff;
 cmd[2] = 0xff;
 cmd[3] = 0xff;
 __swab32s((u32 *)cmd);

 t.tx_buf = cmd;
 t.len = 4;
 spi_message_add_tail(&t, &m);

 spi_sync(to_spi_device(glue->dev), &m);


 spi->mode ^= SPI_CS_HIGH;
 kfree(cmd);
}
