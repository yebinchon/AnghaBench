
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fs_table_header ;
 int unregister_sysctl_table (int *) ;

void coda_sysctl_clean(void)
{
 if ( fs_table_header ) {
  unregister_sysctl_table(fs_table_header);
  fs_table_header = ((void*)0);
 }
}
