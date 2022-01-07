
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pcmcia_init_failed ;
 int pcmcia_unregister_driver (int *) ;
 int ssb_host_pcmcia_driver ;

void ssb_host_pcmcia_exit(void)
{
 if (!pcmcia_init_failed)
  pcmcia_unregister_driver(&ssb_host_pcmcia_driver);
}
