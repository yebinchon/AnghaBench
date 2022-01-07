
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct seq_file {TYPE_1__* private; } ;
struct qla_hw_data {int fce_mutex; int fce_bufs; scalar_t__ fce_dma; scalar_t__ fce; int * fce_mb; scalar_t__ fce_wr; } ;
struct TYPE_2__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int fce_calc_size (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,unsigned long long,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int
qla2x00_dfs_fce_show(struct seq_file *s, void *unused)
{
 scsi_qla_host_t *vha = s->private;
 uint32_t cnt;
 uint32_t *fce;
 uint64_t fce_start;
 struct qla_hw_data *ha = vha->hw;

 mutex_lock(&ha->fce_mutex);

 seq_puts(s, "FCE Trace Buffer\n");
 seq_printf(s, "In Pointer = %llx\n\n", (unsigned long long)ha->fce_wr);
 seq_printf(s, "Base = %llx\n\n", (unsigned long long) ha->fce_dma);
 seq_puts(s, "FCE Enable Registers\n");
 seq_printf(s, "%08x %08x %08x %08x %08x %08x\n",
     ha->fce_mb[0], ha->fce_mb[2], ha->fce_mb[3], ha->fce_mb[4],
     ha->fce_mb[5], ha->fce_mb[6]);

 fce = (uint32_t *) ha->fce;
 fce_start = (unsigned long long) ha->fce_dma;
 for (cnt = 0; cnt < fce_calc_size(ha->fce_bufs) / 4; cnt++) {
  if (cnt % 8 == 0)
   seq_printf(s, "\n%llx: ",
       (unsigned long long)((cnt * 4) + fce_start));
  else
   seq_putc(s, ' ');
  seq_printf(s, "%08x", *fce++);
 }

 seq_puts(s, "\nEnd\n");

 mutex_unlock(&ha->fce_mutex);

 return 0;
}
