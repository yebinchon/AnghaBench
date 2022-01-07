
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int desc_count; int desc_avail; } ;
struct vnic_wq_copy {int to_clean_index; TYPE_1__ ring; } ;
struct fnic {int* fw_ack_index; scalar_t__* fw_ack_recd; } ;



__attribute__((used)) static int free_wq_copy_descs(struct fnic *fnic, struct vnic_wq_copy *wq)
{

 if (!fnic->fw_ack_recd[0])
  return 1;





 if (wq->to_clean_index <= fnic->fw_ack_index[0])
  wq->ring.desc_avail += (fnic->fw_ack_index[0]
     - wq->to_clean_index + 1);
 else
  wq->ring.desc_avail += (wq->ring.desc_count
     - wq->to_clean_index
     + fnic->fw_ack_index[0] + 1);






 wq->to_clean_index =
  (fnic->fw_ack_index[0] + 1) % wq->ring.desc_count;


 fnic->fw_ack_recd[0] = 0;
 return 0;
}
