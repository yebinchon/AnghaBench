
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int invalid_crcs; int primseq_errs; int loss_of_signals; int loss_of_syncs; int link_failures; int dropped_frames; int error_frames; int nos_count; int lip_count; int rx_words; int rx_frames; int tx_words; int tx_frames; int secs_reset; } ;
union bfa_port_stats_u {TYPE_1__ fc; } ;
struct fc_host_statistics {int invalid_crc_count; int prim_seq_protocol_err_count; int loss_of_signal_count; int loss_of_sync_count; int link_failure_count; int dumped_frames; int error_frames; int nos_count; int lip_count; int rx_words; int rx_frames; int tx_words; int tx_frames; int seconds_since_last_reset; } ;
struct bfad_s {int bfad_lock; int bfa; struct fc_host_statistics link_stats; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct bfad_hal_comp {int comp; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef scalar_t__ bfa_status_t ;


 int BFA_FCPORT (int *) ;
 scalar_t__ BFA_STATUS_OK ;
 int GFP_KERNEL ;
 scalar_t__ bfa_port_get_stats (int ,union bfa_port_stats_u*,int ,struct bfad_hal_comp*) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int kfree (union bfa_port_stats_u*) ;
 union bfa_port_stats_u* kzalloc (int,int ) ;
 int memset (struct fc_host_statistics*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static struct fc_host_statistics *
bfad_im_get_stats(struct Scsi_Host *shost)
{
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *) shost->hostdata[0];
 struct bfad_s *bfad = im_port->bfad;
 struct bfad_hal_comp fcomp;
 union bfa_port_stats_u *fcstats;
 struct fc_host_statistics *hstats;
 bfa_status_t rc;
 unsigned long flags;

 fcstats = kzalloc(sizeof(union bfa_port_stats_u), GFP_KERNEL);
 if (fcstats == ((void*)0))
  return ((void*)0);

 hstats = &bfad->link_stats;
 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 memset(hstats, 0, sizeof(struct fc_host_statistics));
 rc = bfa_port_get_stats(BFA_FCPORT(&bfad->bfa),
    fcstats, bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (rc != BFA_STATUS_OK)
  return ((void*)0);

 wait_for_completion(&fcomp.comp);


 hstats->seconds_since_last_reset = fcstats->fc.secs_reset;
 hstats->tx_frames = fcstats->fc.tx_frames;
 hstats->tx_words = fcstats->fc.tx_words;
 hstats->rx_frames = fcstats->fc.rx_frames;
 hstats->rx_words = fcstats->fc.rx_words;
 hstats->lip_count = fcstats->fc.lip_count;
 hstats->nos_count = fcstats->fc.nos_count;
 hstats->error_frames = fcstats->fc.error_frames;
 hstats->dumped_frames = fcstats->fc.dropped_frames;
 hstats->link_failure_count = fcstats->fc.link_failures;
 hstats->loss_of_sync_count = fcstats->fc.loss_of_syncs;
 hstats->loss_of_signal_count = fcstats->fc.loss_of_signals;
 hstats->prim_seq_protocol_err_count = fcstats->fc.primseq_errs;
 hstats->invalid_crc_count = fcstats->fc.invalid_crcs;

 kfree(fcstats);
 return hstats;
}
