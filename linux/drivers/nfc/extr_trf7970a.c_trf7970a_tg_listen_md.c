
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct trf7970a {int state; int dev; } ;
struct nfc_digital_dev {int dummy; } ;
typedef int nfc_digital_cmd_complete_t ;


 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_CONFIG_RF_TECH ;
 int NFC_DIGITAL_FRAMING_NFCA_NFC_DEP ;
 int NFC_DIGITAL_RF_TECH_106A ;
 int _trf7970a_tg_listen (struct nfc_digital_dev*,int ,int ,void*,int) ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct trf7970a* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int trf7970a_tg_configure_hw (struct nfc_digital_dev*,int ,int ) ;

__attribute__((used)) static int trf7970a_tg_listen_md(struct nfc_digital_dev *ddev,
     u16 timeout, nfc_digital_cmd_complete_t cb,
     void *arg)
{
 struct trf7970a *trf = nfc_digital_get_drvdata(ddev);
 int ret;

 dev_dbg(trf->dev, "Listen MD - state: %d, timeout: %d ms\n",
  trf->state, timeout);

 ret = trf7970a_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_RF_TECH,
           NFC_DIGITAL_RF_TECH_106A);
 if (ret)
  return ret;

 ret = trf7970a_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
           NFC_DIGITAL_FRAMING_NFCA_NFC_DEP);
 if (ret)
  return ret;

 return _trf7970a_tg_listen(ddev, timeout, cb, arg, 1);
}
