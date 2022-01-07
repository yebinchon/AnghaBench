
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hvcs_index_count ;
 int * hvcs_index_list ;
 int kfree (int *) ;

__attribute__((used)) static void hvcs_free_index_list(void)
{

 kfree(hvcs_index_list);
 hvcs_index_list = ((void*)0);
 hvcs_index_count = 0;
}
