
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int misc; } ;
struct sbp_target_request {TYPE_1__* pg_tbl; TYPE_2__ orb; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {int segment_length; } ;


 int CMDBLK_ORB_DATA_SIZE (int ) ;
 int CMDBLK_ORB_DIRECTION (int ) ;
 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static void sbp_calc_data_length_direction(struct sbp_target_request *req,
 u32 *data_len, enum dma_data_direction *data_dir)
{
 int data_size, direction, idx;

 data_size = CMDBLK_ORB_DATA_SIZE(be32_to_cpu(req->orb.misc));
 direction = CMDBLK_ORB_DIRECTION(be32_to_cpu(req->orb.misc));

 if (!data_size) {
  *data_len = 0;
  *data_dir = DMA_NONE;
  return;
 }

 *data_dir = direction ? DMA_FROM_DEVICE : DMA_TO_DEVICE;

 if (req->pg_tbl) {
  *data_len = 0;
  for (idx = 0; idx < data_size; idx++) {
   *data_len += be16_to_cpu(
     req->pg_tbl[idx].segment_length);
  }
 } else {
  *data_len = data_size;
 }
}
