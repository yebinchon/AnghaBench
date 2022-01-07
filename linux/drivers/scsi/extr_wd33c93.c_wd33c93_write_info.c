
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct WD33C93_hostdata {int args; int disconnect; int proc; int no_dma; int level2; int fast; int no_sync; int dma_mode; TYPE_1__* sx_table; int default_sx_per; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {int period_ns; } ;


 int CTRL_BURST ;
 int CTRL_DMA ;
 int DB_MASK ;
 int DIS_ADAPTIVE ;
 int DIS_ALWAYS ;
 int DIS_NEVER ;
 size_t round_period (unsigned int,TYPE_1__*) ;
 int set_resync (struct WD33C93_hostdata*,int) ;
 scalar_t__ simple_strtol (char*,char**,int ) ;
 int simple_strtoul (char*,char**,int ) ;
 int strncmp (char*,char*,int) ;

int wd33c93_write_info(struct Scsi_Host *instance, char *buf, int len)
{
 return 0;

}
