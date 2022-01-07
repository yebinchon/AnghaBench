
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dim2_is_mlb_locked () ;

bool dim_get_lock_state(void)
{
 return dim2_is_mlb_locked();
}
