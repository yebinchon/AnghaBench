
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snic_trc {int enable; int * buf; } ;
struct TYPE_2__ {struct snic_trc trc; } ;


 int SNIC_INFO (char*) ;
 TYPE_1__* snic_glob ;
 int snic_trc_debugfs_term () ;
 int vfree (int *) ;

void
snic_trc_free(void)
{
 struct snic_trc *trc = &snic_glob->trc;

 trc->enable = 0;
 snic_trc_debugfs_term();

 if (trc->buf) {
  vfree(trc->buf);
  trc->buf = ((void*)0);
 }

 SNIC_INFO("Trace Facility Disabled.\n");
}
