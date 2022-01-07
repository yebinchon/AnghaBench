
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct tidaw {int flags; scalar_t__ count; } ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 int TIDAW_FLAGS_INSERT_CBC ;
 int TIDAW_FLAGS_LAST ;

__attribute__((used)) static u32 calc_cbc_size(struct tidaw *tidaw, int num)
{
 int i;
 u32 cbc_data;
 u32 cbc_count = 0;
 u64 data_count = 0;

 for (i = 0; i < num; i++) {
  if (tidaw[i].flags & TIDAW_FLAGS_LAST)
   break;



  data_count += tidaw[i].count;
  if (tidaw[i].flags & TIDAW_FLAGS_INSERT_CBC) {
   cbc_data = 4 + ALIGN(data_count, 4) - data_count;
   cbc_count += cbc_data;
   data_count += cbc_data;
  }
 }
 return cbc_count;
}
