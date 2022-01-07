
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snic_trc_data {scalar_t__ ts; } ;
struct snic_trc {size_t wr_idx; size_t max_idx; size_t rd_idx; int lock; struct snic_trc_data* buf; } ;
struct TYPE_2__ {struct snic_trc trc; } ;


 TYPE_1__* snic_glob ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct snic_trc_data *
snic_get_trc_buf(void)
{
 struct snic_trc *trc = &snic_glob->trc;
 struct snic_trc_data *td = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&trc->lock, flags);
 td = &trc->buf[trc->wr_idx];
 trc->wr_idx++;

 if (trc->wr_idx == trc->max_idx)
  trc->wr_idx = 0;

 if (trc->wr_idx != trc->rd_idx) {
  spin_unlock_irqrestore(&trc->lock, flags);

  goto end;
 }

 trc->rd_idx++;
 if (trc->rd_idx == trc->max_idx)
  trc->rd_idx = 0;

 td->ts = 0;
 spin_unlock_irqrestore(&trc->lock, flags);

end:

 return td;
}
