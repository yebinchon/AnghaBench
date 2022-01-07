
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_state {int corrupted; scalar_t__ ignore; } ;



void gigaset_isdn_rcv_err(struct bc_state *bcs)
{

 if (bcs->ignore) {
  bcs->ignore--;
  return;
 }


 bcs->corrupted++;


}
