
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533_fw_version {int rev; int ver; int ic; } ;
struct pn533 {int dev; } ;
typedef int fw_ver ;


 int memset (struct pn533_fw_version*,int ,int) ;
 int nfc_err (int ,char*) ;
 int nfc_info (int ,char*,int ,int ,int ) ;
 int pn533_get_firmware_version (struct pn533*,struct pn533_fw_version*) ;
 int pn533_setup (struct pn533*) ;

int pn533_finalize_setup(struct pn533 *dev)
{

 struct pn533_fw_version fw_ver;
 int rc;

 memset(&fw_ver, 0, sizeof(fw_ver));

 rc = pn533_get_firmware_version(dev, &fw_ver);
 if (rc) {
  nfc_err(dev->dev, "Unable to get FW version\n");
  return rc;
 }

 nfc_info(dev->dev, "NXP PN5%02X firmware ver %d.%d now attached\n",
  fw_ver.ic, fw_ver.ver, fw_ver.rev);

 rc = pn533_setup(dev);
 if (rc)
  return rc;

 return 0;
}
