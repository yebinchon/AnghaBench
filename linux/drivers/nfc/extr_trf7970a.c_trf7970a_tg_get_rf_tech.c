
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trf7970a {int md_rf_tech; int state; int dev; } ;
struct nfc_digital_dev {int dummy; } ;


 int dev_dbg (int ,char*,int ,int ) ;
 struct trf7970a* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;

__attribute__((used)) static int trf7970a_tg_get_rf_tech(struct nfc_digital_dev *ddev, u8 *rf_tech)
{
 struct trf7970a *trf = nfc_digital_get_drvdata(ddev);

 dev_dbg(trf->dev, "Get RF Tech - state: %d, rf_tech: %d\n",
  trf->state, trf->md_rf_tech);

 *rf_tech = trf->md_rf_tech;

 return 0;
}
