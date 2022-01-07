
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int refcnt; } ;


 int __reset_control_release ;
 int kref_put (int *,int ) ;
 int lockdep_assert_held (int *) ;
 int reset_list_mutex ;

__attribute__((used)) static void __reset_control_put_internal(struct reset_control *rstc)
{
 lockdep_assert_held(&reset_list_mutex);

 kref_put(&rstc->refcnt, __reset_control_release);
}
