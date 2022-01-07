
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pcmcia_init_failed ;
 int pcmcia_register_driver (int *) ;
 int ssb_host_pcmcia_driver ;

int ssb_host_pcmcia_init(void)
{
 pcmcia_init_failed = pcmcia_register_driver(&ssb_host_pcmcia_driver);

 return pcmcia_init_failed;
}
