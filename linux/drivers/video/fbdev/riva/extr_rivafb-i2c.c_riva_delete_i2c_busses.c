
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct riva_par {TYPE_1__* chan; } ;
struct TYPE_2__ {int * par; int adapter; } ;


 int i2c_del_adapter (int *) ;

void riva_delete_i2c_busses(struct riva_par *par)
{
 int i;

 for (i = 0; i < 3; i++) {
  if (!par->chan[i].par)
   continue;
  i2c_del_adapter(&par->chan[i].adapter);
  par->chan[i].par = ((void*)0);
 }
}
