
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int func; int socket; } ;
struct pcmcia_cfg_mem {int (* conf_check ) (struct pcmcia_device*,void*) ;int parse; void* priv_data; struct pcmcia_device* p_dev; } ;


 int CISTPL_CFTABLE_ENTRY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct pcmcia_cfg_mem*) ;
 struct pcmcia_cfg_mem* kzalloc (int,int ) ;
 int pccard_loop_tuple (int ,int ,int ,int *,struct pcmcia_cfg_mem*,int ) ;
 int pcmcia_do_loop_config ;

int pcmcia_loop_config(struct pcmcia_device *p_dev,
         int (*conf_check) (struct pcmcia_device *p_dev,
       void *priv_data),
         void *priv_data)
{
 struct pcmcia_cfg_mem *cfg_mem;
 int ret;

 cfg_mem = kzalloc(sizeof(struct pcmcia_cfg_mem), GFP_KERNEL);
 if (cfg_mem == ((void*)0))
  return -ENOMEM;

 cfg_mem->p_dev = p_dev;
 cfg_mem->conf_check = conf_check;
 cfg_mem->priv_data = priv_data;

 ret = pccard_loop_tuple(p_dev->socket, p_dev->func,
    CISTPL_CFTABLE_ENTRY, &cfg_mem->parse,
    cfg_mem, pcmcia_do_loop_config);

 kfree(cfg_mem);
 return ret;
}
