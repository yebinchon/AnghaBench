
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct Scsi_Host {int sg_tablesize; scalar_t__ can_queue; } ;


 int QLOGICPTI_MAX_SG (int) ;
 int QLOGICPTI_REQ_QUEUE_LEN ;
 int REQ_QUEUE_DEPTH (int ,int ) ;
 scalar_t__ scsi_host_busy (struct Scsi_Host*) ;

__attribute__((used)) static inline void update_can_queue(struct Scsi_Host *host, u_int in_ptr, u_int out_ptr)
{


 int num_free = QLOGICPTI_REQ_QUEUE_LEN - REQ_QUEUE_DEPTH(in_ptr, out_ptr) - 64;
 host->can_queue = scsi_host_busy(host) + num_free;
 host->sg_tablesize = QLOGICPTI_MAX_SG(num_free);
}
