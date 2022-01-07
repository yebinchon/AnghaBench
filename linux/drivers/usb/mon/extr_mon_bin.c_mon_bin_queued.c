
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_reader_bin {unsigned int b_cnt; unsigned int b_out; unsigned int b_size; int fetch_lock; int b_lock; } ;
struct mon_bin_hdr {unsigned int len_cap; } ;


 struct mon_bin_hdr* MON_OFF2HDR (struct mon_reader_bin*,unsigned int) ;
 unsigned int PKT_ALIGN ;
 unsigned int PKT_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mon_bin_queued(struct mon_reader_bin *rp)
{
 unsigned int cur_out;
 unsigned int bytes, avail;
 unsigned int size;
 unsigned int nevents;
 struct mon_bin_hdr *ep;
 unsigned long flags;

 mutex_lock(&rp->fetch_lock);

 spin_lock_irqsave(&rp->b_lock, flags);
 avail = rp->b_cnt;
 spin_unlock_irqrestore(&rp->b_lock, flags);

 cur_out = rp->b_out;
 nevents = 0;
 bytes = 0;
 while (bytes < avail) {
  ep = MON_OFF2HDR(rp, cur_out);

  nevents++;
  size = ep->len_cap + PKT_SIZE;
  size = (size + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
  if ((cur_out += size) >= rp->b_size)
   cur_out -= rp->b_size;
  bytes += size;
 }

 mutex_unlock(&rp->fetch_lock);
 return nevents;
}
