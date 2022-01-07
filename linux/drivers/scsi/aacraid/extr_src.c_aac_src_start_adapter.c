
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* host_elapsed_seconds; } ;
struct TYPE_3__ {void* host_elapsed_seconds; } ;
union aac_init {TYPE_2__ r7; TYPE_1__ r8; } ;
typedef scalar_t__ ulong ;
typedef int u32 ;
struct aac_dev {int max_msix; int* host_rrq_idx; int vector_cap; scalar_t__ comm_interface; scalar_t__ init_pa; union aac_init* init; scalar_t__ fibs_pushed_no; int msix_counter; int * rrq_outstanding; } ;
struct _rrq {int dummy; } ;
struct _r8 {int dummy; } ;


 scalar_t__ AAC_COMM_MESSAGE_TYPE3 ;
 int AAC_MAX_HRRQ ;
 int INIT_STRUCT_BASE_ADDRESS ;
 int atomic_set (int *,int ) ;
 void* cpu_to_le32 (int ) ;
 int ktime_get_real_seconds () ;
 int lower_32_bits (scalar_t__) ;
 int src_sync_cmd (struct aac_dev*,int ,int ,int ,int,int ,int ,int ,int *,int *,int *,int *,int *) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void aac_src_start_adapter(struct aac_dev *dev)
{
 union aac_init *init;
 int i;


 for (i = 0; i < dev->max_msix; i++) {
  dev->host_rrq_idx[i] = i * dev->vector_cap;
  atomic_set(&dev->rrq_outstanding[i], 0);
 }
 atomic_set(&dev->msix_counter, 0);
 dev->fibs_pushed_no = 0;

 init = dev->init;
 if (dev->comm_interface == AAC_COMM_MESSAGE_TYPE3) {
  init->r8.host_elapsed_seconds =
   cpu_to_le32(ktime_get_real_seconds());
  src_sync_cmd(dev, INIT_STRUCT_BASE_ADDRESS,
   lower_32_bits(dev->init_pa),
   upper_32_bits(dev->init_pa),
   sizeof(struct _r8) +
   (AAC_MAX_HRRQ - 1) * sizeof(struct _rrq),
   0, 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 } else {
  init->r7.host_elapsed_seconds =
   cpu_to_le32(ktime_get_real_seconds());

  src_sync_cmd(dev, INIT_STRUCT_BASE_ADDRESS,
   (u32)(ulong)dev->init_pa, 0, 0, 0, 0, 0,
   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 }

}
