
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_fcp_pkt {int scsi_pkt_lock; } ;


 int fc_fcp_pkt_release (struct fc_fcp_pkt*) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void fc_fcp_unlock_pkt(struct fc_fcp_pkt *fsp)
{
 spin_unlock_bh(&fsp->scsi_pkt_lock);
 fc_fcp_pkt_release(fsp);
}
