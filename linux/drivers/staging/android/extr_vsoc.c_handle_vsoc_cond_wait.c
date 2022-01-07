
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
struct vsoc_region_data {int futex_wait_queue; } ;
struct vsoc_device_region {scalar_t__ region_begin_offset; scalar_t__ region_end_offset; } ;
struct vsoc_cond_wait {int offset; int wait_type; scalar_t__ wake_time_nsec; scalar_t__ value; int wakes; int wake_time_sec; } ;
struct hrtimer_sleeper {int timer; int task; } ;
struct file {int dummy; } ;
typedef int ktime_t ;
typedef int atomic_t ;
struct TYPE_5__ {int timer_slack_ns; } ;
struct TYPE_4__ {struct vsoc_region_data* regions_data; } ;


 int CLOCK_MONOTONIC ;
 int DEFINE_WAIT (int ) ;
 int E2BIG ;
 int EADDRNOTAVAIL ;
 int EINTR ;
 int EINVAL ;
 int ETIMEDOUT ;
 int HRTIMER_MODE_ABS ;
 scalar_t__ NSEC_PER_SEC ;
 int TASK_INTERRUPTIBLE ;


 scalar_t__ atomic_read (int *) ;
 TYPE_2__* current ;
 int destroy_hrtimer_on_stack (int *) ;
 int file_inode (struct file*) ;
 int finish_wait (int *,int *) ;
 int freezable_schedule () ;
 int hrtimer_cancel (int *) ;
 int hrtimer_init_sleeper_on_stack (struct hrtimer_sleeper*,int ,int ) ;
 int hrtimer_set_expires_range_ns (int *,int ,int ) ;
 int hrtimer_sleeper_start_expires (struct hrtimer_sleeper*,int ) ;
 int iminor (int ) ;
 int ktime_set (int ,scalar_t__) ;
 scalar_t__ likely (int ) ;
 int prepare_to_wait (int *,int *,int ) ;
 int * shm_off_to_virtual_addr (scalar_t__) ;
 scalar_t__ signal_pending (TYPE_2__*) ;
 TYPE_1__ vsoc_dev ;
 struct vsoc_device_region* vsoc_region_from_filep (struct file*) ;
 int wait ;

__attribute__((used)) static int handle_vsoc_cond_wait(struct file *filp, struct vsoc_cond_wait *arg)
{
 DEFINE_WAIT(wait);
 u32 region_number = iminor(file_inode(filp));
 struct vsoc_region_data *data = vsoc_dev.regions_data + region_number;
 struct hrtimer_sleeper timeout, *to = ((void*)0);
 int ret = 0;
 struct vsoc_device_region *region_p = vsoc_region_from_filep(filp);
 atomic_t *address = ((void*)0);
 ktime_t wake_time;


 if (arg->offset & (sizeof(uint32_t) - 1))
  return -EADDRNOTAVAIL;

 if (((uint64_t)arg->offset) + region_p->region_begin_offset +
     sizeof(uint32_t) > region_p->region_end_offset)
  return -E2BIG;
 address = shm_off_to_virtual_addr(region_p->region_begin_offset +
       arg->offset);


 switch (arg->wait_type) {
 case 129:
  break;
 case 128:
  to = &timeout;
  break;
 default:
  return -EINVAL;
 }

 if (to) {




  if (arg->wake_time_nsec >= NSEC_PER_SEC)
   return -EINVAL;
  wake_time = ktime_set(arg->wake_time_sec, arg->wake_time_nsec);

  hrtimer_init_sleeper_on_stack(to, CLOCK_MONOTONIC,
           HRTIMER_MODE_ABS);
  hrtimer_set_expires_range_ns(&to->timer, wake_time,
          current->timer_slack_ns);
 }

 while (1) {
  prepare_to_wait(&data->futex_wait_queue, &wait,
    TASK_INTERRUPTIBLE);







  if (atomic_read(address) != arg->value) {
   ret = 0;
   break;
  }
  if (to) {
   hrtimer_sleeper_start_expires(to, HRTIMER_MODE_ABS);
   if (likely(to->task))
    freezable_schedule();
   hrtimer_cancel(&to->timer);
   if (!to->task) {
    ret = -ETIMEDOUT;
    break;
   }
  } else {
   freezable_schedule();
  }



  ++arg->wakes;
  if (signal_pending(current)) {
   ret = -EINTR;
   break;
  }
 }
 finish_wait(&data->futex_wait_queue, &wait);
 if (to)
  destroy_hrtimer_on_stack(&to->timer);
 return ret;
}
