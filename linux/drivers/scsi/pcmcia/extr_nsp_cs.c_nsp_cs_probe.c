
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {struct pcmcia_device* priv; struct pcmcia_device* p_dev; } ;
typedef struct pcmcia_device scsi_info_t ;
struct TYPE_3__ {struct pcmcia_device* ScsiInfo; } ;
typedef TYPE_1__ nsp_hw_data ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NSP_DEBUG_INIT ;
 struct pcmcia_device* kzalloc (int,int ) ;
 int nsp_cs_config (struct pcmcia_device*) ;
 TYPE_1__ nsp_data_base ;
 int nsp_dbg (int ,char*,...) ;

__attribute__((used)) static int nsp_cs_probe(struct pcmcia_device *link)
{
 scsi_info_t *info;
 nsp_hw_data *data = &nsp_data_base;
 int ret;

 nsp_dbg(NSP_DEBUG_INIT, "in");


 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (info == ((void*)0)) { return -ENOMEM; }
 info->p_dev = link;
 link->priv = info;
 data->ScsiInfo = info;

 nsp_dbg(NSP_DEBUG_INIT, "info=0x%p", info);

 ret = nsp_cs_config(link);

 nsp_dbg(NSP_DEBUG_INIT, "link=0x%p", link);
 return ret;
}
