
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_free_callbacks () ;
 int gnttab_free_callback_list ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void check_free_callbacks(void)
{
 if (unlikely(gnttab_free_callback_list))
  do_free_callbacks();
}
