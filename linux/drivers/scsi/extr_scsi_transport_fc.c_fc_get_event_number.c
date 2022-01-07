
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int atomic_add_return (int,int *) ;
 int fc_event_seq ;

u32
fc_get_event_number(void)
{
 return atomic_add_return(1, &fc_event_seq);
}
