
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gntdev_dmabuf_wait_obj {int completion; } ;


 int ETIMEDOUT ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int dmabuf_exp_wait_obj_wait(struct gntdev_dmabuf_wait_obj *obj,
        u32 wait_to_ms)
{
 if (wait_for_completion_timeout(&obj->completion,
   msecs_to_jiffies(wait_to_ms)) <= 0)
  return -ETIMEDOUT;

 return 0;
}
