
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct uea_softc {TYPE_1__* usb_dev; } ;
struct firmware {int size; scalar_t__* data; } ;
struct TYPE_6__ {int dev; } ;


 int EILSEQ ;
 char* FPGA930_FIRMWARE ;
 TYPE_1__* INS_TO_USBDEV (struct uea_softc*) ;
 int min (int,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int uea_enters (TYPE_1__*) ;
 int uea_err (TYPE_1__*,char*,...) ;
 int uea_leaves (TYPE_1__*) ;
 int uea_request (struct uea_softc*,int,int,int,scalar_t__ const*) ;
 int uea_send_modem_cmd (TYPE_1__*,int,int,scalar_t__*) ;

__attribute__((used)) static int load_XILINX_firmware(struct uea_softc *sc)
{
 const struct firmware *fw_entry;
 int ret, size, u, ln;
 const u8 *pfw;
 u8 value;
 char *fw_name = FPGA930_FIRMWARE;

 uea_enters(INS_TO_USBDEV(sc));

 ret = request_firmware(&fw_entry, fw_name, &sc->usb_dev->dev);
 if (ret) {
  uea_err(INS_TO_USBDEV(sc), "firmware %s is not available\n",
         fw_name);
  goto err0;
 }

 pfw = fw_entry->data;
 size = fw_entry->size;
 if (size != 0x577B) {
  uea_err(INS_TO_USBDEV(sc), "firmware %s is corrupted\n",
         fw_name);
  ret = -EILSEQ;
  goto err1;
 }
 for (u = 0; u < size; u += ln) {
  ln = min(size - u, 64);
  ret = uea_request(sc, 0xe, 0, ln, pfw + u);
  if (ret < 0) {
   uea_err(INS_TO_USBDEV(sc),
          "elsa download data failed (%d)\n", ret);
   goto err1;
  }
 }


 ret = uea_request(sc, 0xe, 1, 0, ((void*)0));
 if (ret < 0) {
  uea_err(INS_TO_USBDEV(sc),
    "elsa download data failed (%d)\n", ret);
  goto err1;
 }


 value = 0;
 ret = uea_send_modem_cmd(sc->usb_dev, 0xe, 1, &value);
 if (ret < 0)
  uea_err(sc->usb_dev, "elsa de-assert failed with error"
        " %d\n", ret);

err1:
 release_firmware(fw_entry);
err0:
 uea_leaves(INS_TO_USBDEV(sc));
 return ret;
}
