
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmem_device {int disk; int dax_dev; } ;


 int del_gendisk (int ) ;
 int kill_dax (int ) ;
 int put_dax (int ) ;
 int put_disk (int ) ;

__attribute__((used)) static void pmem_release_disk(void *__pmem)
{
 struct pmem_device *pmem = __pmem;

 kill_dax(pmem->dax_dev);
 put_dax(pmem->dax_dev);
 del_gendisk(pmem->disk);
 put_disk(pmem->disk);
}
