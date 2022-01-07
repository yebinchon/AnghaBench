
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_qsz; int qsz_rampup; int qsz_rampdown; } ;
struct TYPE_4__ {TYPE_1__ misc; } ;
struct snic {TYPE_2__ s_stats; } ;
struct scsi_device {int queue_depth; int host; } ;


 int SNIC_MAX_QUEUE_DEPTH ;
 int atomic64_inc (int *) ;
 int atomic64_set (int *,int) ;
 int min_t (int ,int,int ) ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;
 struct snic* shost_priv (int ) ;
 int u32 ;

__attribute__((used)) static int
snic_change_queue_depth(struct scsi_device *sdev, int qdepth)
{
 struct snic *snic = shost_priv(sdev->host);
 int qsz = 0;

 qsz = min_t(u32, qdepth, SNIC_MAX_QUEUE_DEPTH);
 if (qsz < sdev->queue_depth)
  atomic64_inc(&snic->s_stats.misc.qsz_rampdown);
 else if (qsz > sdev->queue_depth)
  atomic64_inc(&snic->s_stats.misc.qsz_rampup);

 atomic64_set(&snic->s_stats.misc.last_qsz, sdev->queue_depth);

 scsi_change_queue_depth(sdev, qsz);

 return sdev->queue_depth;
}
