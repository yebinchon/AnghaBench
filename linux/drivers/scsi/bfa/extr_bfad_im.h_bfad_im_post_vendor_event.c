
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int tv_nsec; int tv_sec; } ;
struct bfad_s {int bfad_flags; TYPE_1__* im; int inst_no; } ;
struct bfa_aen_entry_s {int aen_tv_usec; int seq_num; int aen_category; int aen_type; int bfad_num; int aen_tv_sec; } ;
typedef enum bfa_aen_category { ____Placeholder_bfa_aen_category } bfa_aen_category ;
struct TYPE_2__ {int aen_im_notify_work; int drv_workq; } ;


 int BFAD_FC4_PROBE_DONE ;
 int NSEC_PER_USEC ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static inline void bfad_im_post_vendor_event(struct bfa_aen_entry_s *entry,
          struct bfad_s *drv, int cnt,
          enum bfa_aen_category cat,
          int evt)
{
 struct timespec64 ts;

 ktime_get_real_ts64(&ts);





 entry->aen_tv_sec = ts.tv_sec;
 entry->aen_tv_usec = ts.tv_nsec / NSEC_PER_USEC;
 entry->bfad_num = drv->inst_no;
 entry->seq_num = cnt;
 entry->aen_category = cat;
 entry->aen_type = evt;
 if (drv->bfad_flags & BFAD_FC4_PROBE_DONE)
  queue_work(drv->im->drv_workq, &drv->im->aen_im_notify_work);
}
