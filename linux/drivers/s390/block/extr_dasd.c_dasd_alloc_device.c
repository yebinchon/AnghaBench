
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct dasd_device {TYPE_1__ profile; int state_mutex; void* target; void* state; int requeue_requests; int reload_device; int restore_device; int kick_work; int timer; int ccw_queue; int tasklet; int tasklet_scheduled; int mem_lock; void* ese_mem; int ese_chunks; void* erp_mem; int erp_chunks; void* ccw_mem; int ccw_chunks; } ;


 void* DASD_STATE_NEW ;
 int ENOMEM ;
 struct dasd_device* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_pages (int,int) ;
 int atomic_set (int *,int ) ;
 int dasd_device_tasklet ;
 int dasd_device_timeout ;
 int dasd_init_chunklist (int *,void*,int) ;
 int do_kick_device ;
 int do_reload_device ;
 int do_requeue_requests ;
 int do_restore_device ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,int) ;
 scalar_t__ get_zeroed_page (int) ;
 int kfree (struct dasd_device*) ;
 struct dasd_device* kzalloc (int,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

struct dasd_device *dasd_alloc_device(void)
{
 struct dasd_device *device;

 device = kzalloc(sizeof(struct dasd_device), GFP_ATOMIC);
 if (!device)
  return ERR_PTR(-ENOMEM);


 device->ccw_mem = (void *) __get_free_pages(GFP_ATOMIC | GFP_DMA, 1);
 if (!device->ccw_mem) {
  kfree(device);
  return ERR_PTR(-ENOMEM);
 }

 device->erp_mem = (void *) get_zeroed_page(GFP_ATOMIC | GFP_DMA);
 if (!device->erp_mem) {
  free_pages((unsigned long) device->ccw_mem, 1);
  kfree(device);
  return ERR_PTR(-ENOMEM);
 }

 device->ese_mem = (void *)__get_free_pages(GFP_ATOMIC | GFP_DMA, 1);
 if (!device->ese_mem) {
  free_page((unsigned long) device->erp_mem);
  free_pages((unsigned long) device->ccw_mem, 1);
  kfree(device);
  return ERR_PTR(-ENOMEM);
 }

 dasd_init_chunklist(&device->ccw_chunks, device->ccw_mem, PAGE_SIZE*2);
 dasd_init_chunklist(&device->erp_chunks, device->erp_mem, PAGE_SIZE);
 dasd_init_chunklist(&device->ese_chunks, device->ese_mem, PAGE_SIZE * 2);
 spin_lock_init(&device->mem_lock);
 atomic_set(&device->tasklet_scheduled, 0);
 tasklet_init(&device->tasklet, dasd_device_tasklet,
       (unsigned long) device);
 INIT_LIST_HEAD(&device->ccw_queue);
 timer_setup(&device->timer, dasd_device_timeout, 0);
 INIT_WORK(&device->kick_work, do_kick_device);
 INIT_WORK(&device->restore_device, do_restore_device);
 INIT_WORK(&device->reload_device, do_reload_device);
 INIT_WORK(&device->requeue_requests, do_requeue_requests);
 device->state = DASD_STATE_NEW;
 device->target = DASD_STATE_NEW;
 mutex_init(&device->state_mutex);
 spin_lock_init(&device->profile.lock);
 return device;
}
