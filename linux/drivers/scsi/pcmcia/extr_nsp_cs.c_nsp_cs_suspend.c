
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {TYPE_2__* priv; } ;
struct TYPE_4__ {int stop; TYPE_1__* host; } ;
typedef TYPE_2__ scsi_info_t ;
typedef int nsp_hw_data ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int KERN_INFO ;
 int NSP_DEBUG_INIT ;
 int nsp_dbg (int ,char*) ;
 int nsp_msg (int ,char*) ;
 int nsphw_init_sync (int *) ;

__attribute__((used)) static int nsp_cs_suspend(struct pcmcia_device *link)
{
 scsi_info_t *info = link->priv;
 nsp_hw_data *data;

 nsp_dbg(NSP_DEBUG_INIT, "event: suspend");

 if (info->host != ((void*)0)) {
  nsp_msg(KERN_INFO, "clear SDTR status");

  data = (nsp_hw_data *)info->host->hostdata;

  nsphw_init_sync(data);
 }

 info->stop = 1;

 return 0;
}
