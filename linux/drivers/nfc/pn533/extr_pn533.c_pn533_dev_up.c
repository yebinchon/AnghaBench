
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533 {scalar_t__ device_type; } ;
struct nfc_dev {int dummy; } ;


 scalar_t__ PN533_DEVICE_PN532 ;
 struct pn533* nfc_get_drvdata (struct nfc_dev*) ;
 int pn532_sam_configuration (struct nfc_dev*) ;
 int pn533_rf_field (struct nfc_dev*,int) ;

__attribute__((used)) static int pn533_dev_up(struct nfc_dev *nfc_dev)
{
 struct pn533 *dev = nfc_get_drvdata(nfc_dev);

 if (dev->device_type == PN533_DEVICE_PN532) {
  int rc = pn532_sam_configuration(nfc_dev);

  if (rc)
   return rc;
 }

 return pn533_rf_field(nfc_dev, 1);
}
