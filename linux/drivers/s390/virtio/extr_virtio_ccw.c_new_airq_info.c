
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lsi_mask; int isc; int lsi_ptr; int handler; } ;
struct airq_info {int summary_indicator_idx; int aiv; TYPE_1__ airq; int lock; } ;


 int AIRQ_IV_ALLOC ;
 int AIRQ_IV_CACHELINE ;
 int AIRQ_IV_PTR ;
 int GFP_KERNEL ;
 int VIRTIO_AIRQ_ISC ;
 int VIRTIO_IV_BITS ;
 int airq_iv_create (int ,int) ;
 int airq_iv_release (int ) ;
 int get_summary_indicator (struct airq_info*) ;
 int kfree (struct airq_info*) ;
 struct airq_info* kzalloc (int,int ) ;
 int register_adapter_interrupt (TYPE_1__*) ;
 int rwlock_init (int *) ;
 int virtio_airq_handler ;

__attribute__((used)) static struct airq_info *new_airq_info(int index)
{
 struct airq_info *info;
 int rc;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return ((void*)0);
 rwlock_init(&info->lock);
 info->aiv = airq_iv_create(VIRTIO_IV_BITS, AIRQ_IV_ALLOC | AIRQ_IV_PTR
       | AIRQ_IV_CACHELINE);
 if (!info->aiv) {
  kfree(info);
  return ((void*)0);
 }
 info->airq.handler = virtio_airq_handler;
 info->summary_indicator_idx = index;
 info->airq.lsi_ptr = get_summary_indicator(info);
 info->airq.lsi_mask = 0xff;
 info->airq.isc = VIRTIO_AIRQ_ISC;
 rc = register_adapter_interrupt(&info->airq);
 if (rc) {
  airq_iv_release(info->aiv);
  kfree(info);
  return ((void*)0);
 }
 return info;
}
