
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_fast_reg_page_list_len; } ;
struct ib_device {TYPE_1__ attrs; } ;


 int NVME_RDMA_MAX_SEGMENTS ;
 int min_t (int ,int ,scalar_t__) ;
 int u32 ;

__attribute__((used)) static int nvme_rdma_get_max_fr_pages(struct ib_device *ibdev)
{
 return min_t(u32, NVME_RDMA_MAX_SEGMENTS,
       ibdev->attrs.max_fast_reg_page_list_len - 1);
}
