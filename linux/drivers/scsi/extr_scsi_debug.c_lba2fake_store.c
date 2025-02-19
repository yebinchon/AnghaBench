
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long do_div (unsigned long long,int ) ;
 void* fake_storep ;
 unsigned long long sdebug_sector_size ;
 int sdebug_store_sectors ;

__attribute__((used)) static void *lba2fake_store(unsigned long long lba)
{
 lba = do_div(lba, sdebug_store_sectors);

 return fake_storep + lba * sdebug_sector_size;
}
