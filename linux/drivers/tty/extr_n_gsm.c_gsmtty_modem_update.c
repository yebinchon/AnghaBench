
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gsm_dlci {int addr; int gsm; } ;
struct gsm_control {int dummy; } ;


 int CMD_MSC ;
 int EA ;
 int ENOMEM ;
 struct gsm_control* gsm_control_send (int ,int ,int*,int) ;
 int gsm_control_wait (int ,struct gsm_control*) ;
 int gsm_encode_modem (struct gsm_dlci*) ;

__attribute__((used)) static int gsmtty_modem_update(struct gsm_dlci *dlci, u8 brk)
{
 u8 modembits[5];
 struct gsm_control *ctrl;
 int len = 2;

 if (brk)
  len++;

 modembits[0] = len << 1 | EA;
 modembits[1] = dlci->addr << 2 | 3;
 modembits[2] = gsm_encode_modem(dlci) << 1 | EA;
 if (brk)
  modembits[3] = brk << 4 | 2 | EA;
 ctrl = gsm_control_send(dlci->gsm, CMD_MSC, modembits, len + 1);
 if (ctrl == ((void*)0))
  return -ENOMEM;
 return gsm_control_wait(dlci->gsm, ctrl);
}
