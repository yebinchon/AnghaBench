
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rd_dev {scalar_t__ sg_prot_count; int * sg_prot_array; int sg_table_count; int rd_dev_id; TYPE_1__* rd_host; } ;
struct TYPE_2__ {int rd_host_id; } ;


 unsigned long PAGE_SIZE ;
 int pr_debug (char*,int ,int ,scalar_t__,int ,unsigned long) ;
 scalar_t__ rd_release_sgl_table (struct rd_dev*,int *,scalar_t__) ;

__attribute__((used)) static void rd_release_prot_space(struct rd_dev *rd_dev)
{
 u32 page_count;

 if (!rd_dev->sg_prot_array || !rd_dev->sg_prot_count)
  return;

 page_count = rd_release_sgl_table(rd_dev, rd_dev->sg_prot_array,
       rd_dev->sg_prot_count);

 pr_debug("CORE_RD[%u] - Released protection space for Ramdisk"
   " Device ID: %u, pages %u in %u tables total bytes %lu\n",
   rd_dev->rd_host->rd_host_id, rd_dev->rd_dev_id, page_count,
   rd_dev->sg_table_count, (unsigned long)page_count * PAGE_SIZE);

 rd_dev->sg_prot_array = ((void*)0);
 rd_dev->sg_prot_count = 0;
}
