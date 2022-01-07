
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8001_work {int handler; int work; void* data; struct pm8001_hba_info* pm8001_ha; } ;
struct pm8001_hba_info {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct pm8001_work* kmalloc (int,int ) ;
 int pm8001_work_fn ;
 int pm8001_wq ;
 int queue_work (int ,int *) ;

int pm8001_handle_event(struct pm8001_hba_info *pm8001_ha, void *data,
          int handler)
{
 struct pm8001_work *pw;
 int ret = 0;

 pw = kmalloc(sizeof(struct pm8001_work), GFP_ATOMIC);
 if (pw) {
  pw->pm8001_ha = pm8001_ha;
  pw->data = data;
  pw->handler = handler;
  INIT_WORK(&pw->work, pm8001_work_fn);
  queue_work(pm8001_wq, &pw->work);
 } else
  ret = -ENOMEM;

 return ret;
}
