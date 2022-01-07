
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ local_info_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int sl811_cs_config (struct pcmcia_device*) ;

__attribute__((used)) static int sl811_cs_probe(struct pcmcia_device *link)
{
 local_info_t *local;

 local = kzalloc(sizeof(local_info_t), GFP_KERNEL);
 if (!local)
  return -ENOMEM;
 local->p_dev = link;
 link->priv = local;

 return sl811_cs_config(link);
}
