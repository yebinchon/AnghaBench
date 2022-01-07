
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
raw3270_get_view(struct raw3270_view *view)
{
 atomic_inc(&view->ref_count);
}
