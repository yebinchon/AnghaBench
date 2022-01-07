
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim {int up; } ;
struct nfc_digital_dev {int dummy; } ;


 struct nfcsim* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;

__attribute__((used)) static int nfcsim_switch_rf(struct nfc_digital_dev *ddev, bool on)
{
 struct nfcsim *dev = nfc_digital_get_drvdata(ddev);

 dev->up = on;

 return 0;
}
