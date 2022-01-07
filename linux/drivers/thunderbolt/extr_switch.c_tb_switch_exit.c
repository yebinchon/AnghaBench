
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_destroy (int *) ;
 int nvm_ida ;

void tb_switch_exit(void)
{
 ida_destroy(&nvm_ida);
}
