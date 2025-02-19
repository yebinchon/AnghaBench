
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct rd_dev_sg_table {int dummy; } ;
struct rd_dev {int rd_flags; int rd_page_count; int sg_prot_count; int rd_dev_id; TYPE_1__* rd_host; struct rd_dev_sg_table* sg_prot_array; } ;
struct TYPE_2__ {int rd_host_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RDF_NULLIO ;
 int RD_MAX_ALLOCATION_SIZE ;
 struct rd_dev_sg_table* kcalloc (int,int,int ) ;
 int pr_debug (char*,int ,int ,int,int) ;
 int rd_allocate_sgl_table (struct rd_dev*,struct rd_dev_sg_table*,int,int) ;

__attribute__((used)) static int rd_build_prot_space(struct rd_dev *rd_dev, int prot_length, int block_size)
{
 struct rd_dev_sg_table *sg_table;
 u32 total_sg_needed, sg_tables;
 u32 max_sg_per_table = (RD_MAX_ALLOCATION_SIZE /
    sizeof(struct scatterlist));
 int rc;

 if (rd_dev->rd_flags & RDF_NULLIO)
  return 0;






 total_sg_needed = (rd_dev->rd_page_count * prot_length / block_size) + 1;

 sg_tables = (total_sg_needed / max_sg_per_table) + 1;
 sg_table = kcalloc(sg_tables, sizeof(*sg_table), GFP_KERNEL);
 if (!sg_table)
  return -ENOMEM;

 rd_dev->sg_prot_array = sg_table;
 rd_dev->sg_prot_count = sg_tables;

 rc = rd_allocate_sgl_table(rd_dev, sg_table, total_sg_needed, 0xff);
 if (rc)
  return rc;

 pr_debug("CORE_RD[%u] - Built Ramdisk Device ID: %u prot space of"
   " %u pages in %u tables\n", rd_dev->rd_host->rd_host_id,
   rd_dev->rd_dev_id, total_sg_needed, rd_dev->sg_prot_count);

 return 0;
}
