
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_info {int chip; } ;


 int ARRAY_SIZE (struct fw_info*) ;
 struct fw_info* fw_info_array ;

__attribute__((used)) static struct fw_info *find_fw_info(int chip)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(fw_info_array); i++) {
  if (fw_info_array[i].chip == chip)
   return &fw_info_array[i];
 }
 return ((void*)0);
}
