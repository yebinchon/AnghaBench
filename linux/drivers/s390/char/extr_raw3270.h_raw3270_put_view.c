
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {int ref_count; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int raw3270_wait_queue ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
raw3270_put_view(struct raw3270_view *view)
{
 if (atomic_dec_return(&view->ref_count) == 0)
  wake_up(&raw3270_wait_queue);
}
