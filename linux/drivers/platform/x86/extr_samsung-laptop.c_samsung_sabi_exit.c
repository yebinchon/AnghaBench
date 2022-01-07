
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_laptop {struct sabi_config* config; int * f0000_segment; int * sabi_iface; } ;
struct TYPE_2__ {int set_linux; } ;
struct sabi_config {TYPE_1__ commands; } ;


 int iounmap (int *) ;
 int sabi_set_commandb (struct samsung_laptop*,int,int) ;

__attribute__((used)) static void samsung_sabi_exit(struct samsung_laptop *samsung)
{
 const struct sabi_config *config = samsung->config;


 if (config && config->commands.set_linux != 0xff)
  sabi_set_commandb(samsung, config->commands.set_linux, 0x80);

 if (samsung->sabi_iface) {
  iounmap(samsung->sabi_iface);
  samsung->sabi_iface = ((void*)0);
 }
 if (samsung->f0000_segment) {
  iounmap(samsung->f0000_segment);
  samsung->f0000_segment = ((void*)0);
 }

 samsung->config = ((void*)0);
}
