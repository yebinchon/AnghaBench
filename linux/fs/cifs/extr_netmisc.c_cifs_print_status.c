
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __u32 ;
struct TYPE_2__ {int nt_errcode; int * nt_errstr; } ;


 TYPE_1__* nt_errs ;
 int pr_notice (char*,int,int *) ;

__attribute__((used)) static void
cifs_print_status(__u32 status_code)
{
 int idx = 0;

 while (nt_errs[idx].nt_errstr != ((void*)0)) {
  if (((nt_errs[idx].nt_errcode) & 0xFFFFFF) ==
      (status_code & 0xFFFFFF)) {
   pr_notice("Status code returned 0x%08x %s\n",
      status_code, nt_errs[idx].nt_errstr);
  }
  idx++;
 }
 return;
}
