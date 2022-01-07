
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_lnode {unsigned long tgt_scan_tick; scalar_t__ last_scan_ntgts; scalar_t__ n_scsi_tgts; } ;



int
csio_scan_done(struct csio_lnode *ln, unsigned long ticks,
  unsigned long time, unsigned long max_scan_ticks,
  unsigned long delta_scan_ticks)
{
 int rv = 0;

 if (time >= max_scan_ticks)
  return 1;

 if (!ln->tgt_scan_tick)
  ln->tgt_scan_tick = ticks;

 if (((ticks - ln->tgt_scan_tick) >= delta_scan_ticks)) {
  if (!ln->last_scan_ntgts)
   ln->last_scan_ntgts = ln->n_scsi_tgts;
  else {
   if (ln->last_scan_ntgts == ln->n_scsi_tgts)
    return 1;

   ln->last_scan_ntgts = ln->n_scsi_tgts;
  }
  ln->tgt_scan_tick = ticks;
 }
 return rv;
}
