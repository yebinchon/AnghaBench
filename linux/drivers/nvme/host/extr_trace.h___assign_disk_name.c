
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int disk_name; } ;


 int DISK_NAME_LEN ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static inline void __assign_disk_name(char *name, struct gendisk *disk)
{
 if (disk)
  memcpy(name, disk->disk_name, DISK_NAME_LEN);
 else
  memset(name, 0, DISK_NAME_LEN);
}
