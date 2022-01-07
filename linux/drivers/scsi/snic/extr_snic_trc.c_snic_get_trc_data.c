
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snic_trc_data {scalar_t__ ts; } ;
struct snic_trc {size_t rd_idx; size_t wr_idx; size_t max_idx; int lock; struct snic_trc_data* buf; } ;
struct TYPE_2__ {struct snic_trc trc; } ;


 int snic_fmt_trc_data (struct snic_trc_data*,char*,int) ;
 TYPE_1__* snic_glob ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
snic_get_trc_data(char *buf, int buf_sz)
{
 struct snic_trc_data *td = ((void*)0);
 struct snic_trc *trc = &snic_glob->trc;
 unsigned long flags;

 spin_lock_irqsave(&trc->lock, flags);
 if (trc->rd_idx == trc->wr_idx) {
  spin_unlock_irqrestore(&trc->lock, flags);

  return -1;
 }
 td = &trc->buf[trc->rd_idx];

 if (td->ts == 0) {

  spin_unlock_irqrestore(&trc->lock, flags);

  return -1;
 }

 trc->rd_idx++;
 if (trc->rd_idx == trc->max_idx)
  trc->rd_idx = 0;
 spin_unlock_irqrestore(&trc->lock, flags);

 return snic_fmt_trc_data(td, buf, buf_sz);
}
