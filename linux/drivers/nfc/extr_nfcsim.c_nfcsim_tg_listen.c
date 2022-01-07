
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfc_digital_dev {int dummy; } ;
typedef int nfc_digital_cmd_complete_t ;


 int nfcsim_send (struct nfc_digital_dev*,int *,int ,int ,void*) ;

__attribute__((used)) static int nfcsim_tg_listen(struct nfc_digital_dev *ddev, u16 timeout,
       nfc_digital_cmd_complete_t cb, void *arg)
{
 return nfcsim_send(ddev, ((void*)0), timeout, cb, arg);
}
