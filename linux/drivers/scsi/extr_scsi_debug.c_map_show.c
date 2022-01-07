
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ map_size ;
 int map_storep ;
 size_t scnprintf (char*,scalar_t__,char*,int,...) ;
 int scsi_debug_lbp () ;
 int sdebug_store_sectors ;

__attribute__((used)) static ssize_t map_show(struct device_driver *ddp, char *buf)
{
 ssize_t count;

 if (!scsi_debug_lbp())
  return scnprintf(buf, PAGE_SIZE, "0-%u\n",
     sdebug_store_sectors);

 count = scnprintf(buf, PAGE_SIZE - 1, "%*pbl",
     (int)map_size, map_storep);
 buf[count++] = '\n';
 buf[count] = '\0';

 return count;
}
