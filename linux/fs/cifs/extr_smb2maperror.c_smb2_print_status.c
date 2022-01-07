
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ smb2_status; int * status_string; } ;


 int pr_notice (char*,scalar_t__,int *) ;
 TYPE_1__* smb2_error_map_table ;

__attribute__((used)) static void
smb2_print_status(__le32 status)
{
 int idx = 0;

 while (smb2_error_map_table[idx].status_string != ((void*)0)) {
  if ((smb2_error_map_table[idx].smb2_status) == status) {
   pr_notice("Status code returned 0x%08x %s\n", status,
      smb2_error_map_table[idx].status_string);
  }
  idx++;
 }
 return;
}
