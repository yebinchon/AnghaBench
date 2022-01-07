
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;


 int pn533_rf_field (struct nfc_dev*,int ) ;

__attribute__((used)) static int pn533_dev_down(struct nfc_dev *nfc_dev)
{
 return pn533_rf_field(nfc_dev, 0);
}
