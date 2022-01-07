
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct trf7970a {int state; int dev; } ;
struct nfc_digital_dev {int dummy; } ;
typedef int nfc_digital_cmd_complete_t ;


 int _trf7970a_tg_listen (struct nfc_digital_dev*,int ,int ,void*,int) ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct trf7970a* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;

__attribute__((used)) static int trf7970a_tg_listen(struct nfc_digital_dev *ddev, u16 timeout,
         nfc_digital_cmd_complete_t cb, void *arg)
{
 struct trf7970a *trf = nfc_digital_get_drvdata(ddev);

 dev_dbg(trf->dev, "Listen - state: %d, timeout: %d ms\n",
  trf->state, timeout);

 return _trf7970a_tg_listen(ddev, timeout, cb, arg, 0);
}
