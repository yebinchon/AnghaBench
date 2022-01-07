
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int BTRFS_UUID_SIZE ;

int btrfs_is_empty_uuid(u8 *uuid)
{
 int i;

 for (i = 0; i < BTRFS_UUID_SIZE; i++) {
  if (uuid[i])
   return 0;
 }
 return 1;
}
