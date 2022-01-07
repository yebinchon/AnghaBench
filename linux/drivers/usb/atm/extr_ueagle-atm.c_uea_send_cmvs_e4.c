
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int firmid; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {TYPE_2__ stats; } ;
struct uea_cmvs_v2 {int data; int offset; int address; int group; } ;
struct firmware {int dummy; } ;


 int E4_SA_CNTL ;
 int E4_SA_INFO ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int get_unaligned_le32 (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_cmvs (struct uea_softc*,void**,struct firmware const**,int*) ;
 int uea_err (int ,char*,int) ;
 int uea_info (int ,char*,...) ;
 int uea_read_cmv_e4 (struct uea_softc*,int,int ,int,int ,int *) ;
 int uea_vdbg (int ,char*) ;
 int uea_write_cmv_e4 (struct uea_softc*,int,int,int,int,int) ;

__attribute__((used)) static int uea_send_cmvs_e4(struct uea_softc *sc)
{
 int i, ret, len;
 void *cmvs_ptr;
 const struct firmware *cmvs_fw;
 int ver = 2;


 ret = uea_write_cmv_e4(sc, 1, E4_SA_CNTL, 0, 0, 1);
 if (ret < 0)
  return ret;



 ret = uea_read_cmv_e4(sc, 2, E4_SA_INFO, 55, 0, &sc->stats.phy.firmid);
 if (ret < 0)
  return ret;
 uea_info(INS_TO_USBDEV(sc), "ATU-R firmware version : %x\n",
   sc->stats.phy.firmid);



 ret = len = request_cmvs(sc, &cmvs_ptr, &cmvs_fw, &ver);
 if (ret < 0)
  return ret;


 if (ver == 2) {
  struct uea_cmvs_v2 *cmvs_v2 = cmvs_ptr;

  for (i = 0; i < len; i++) {
   ret = uea_write_cmv_e4(sc, 1,
    get_unaligned_le32(&cmvs_v2[i].group),
    get_unaligned_le32(&cmvs_v2[i].address),
    get_unaligned_le32(&cmvs_v2[i].offset),
    get_unaligned_le32(&cmvs_v2[i].data));
   if (ret < 0)
    goto out;
  }
 } else {

  uea_err(INS_TO_USBDEV(sc), "bad cmvs version %d\n", ver);
  goto out;
 }


 ret = uea_write_cmv_e4(sc, 1, E4_SA_CNTL, 0, 0, 2);
 uea_vdbg(INS_TO_USBDEV(sc), "Entering in R-ACT-REQ state\n");
 uea_info(INS_TO_USBDEV(sc), "modem started, waiting "
      "synchronization...\n");
out:
 release_firmware(cmvs_fw);
 return ret;
}
