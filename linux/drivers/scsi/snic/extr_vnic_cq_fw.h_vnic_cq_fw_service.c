
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int desc_size; int desc_count; scalar_t__ descs; } ;
struct vnic_cq {int to_clean; int last_color; struct vnic_dev* vdev; unsigned int index; TYPE_1__ ring; } ;
typedef struct snic_fw_req snic_fw_req ;


 int snic_color_dec (struct snic_fw_req*,int*) ;
 int stub1 (struct vnic_dev*,unsigned int,struct snic_fw_req*) ;

__attribute__((used)) static inline unsigned int
vnic_cq_fw_service(struct vnic_cq *cq,
     int (*q_service)(struct vnic_dev *vdev,
        unsigned int index,
        struct snic_fw_req *desc),
     unsigned int work_to_do)

{
 struct snic_fw_req *desc;
 unsigned int work_done = 0;
 u8 color;

 desc = (struct snic_fw_req *)((u8 *)cq->ring.descs +
  cq->ring.desc_size * cq->to_clean);
 snic_color_dec(desc, &color);

 while (color != cq->last_color) {

  if ((*q_service)(cq->vdev, cq->index, desc))
   break;

  cq->to_clean++;
  if (cq->to_clean == cq->ring.desc_count) {
   cq->to_clean = 0;
   cq->last_color = cq->last_color ? 0 : 1;
  }

  desc = (struct snic_fw_req *)((u8 *)cq->ring.descs +
   cq->ring.desc_size * cq->to_clean);
  snic_color_dec(desc, &color);

  work_done++;
  if (work_done >= work_to_do)
   break;
 }

 return work_done;
}
