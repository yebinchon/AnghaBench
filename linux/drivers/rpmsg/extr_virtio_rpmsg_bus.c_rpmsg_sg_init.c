
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int WARN_ON (int) ;
 scalar_t__ is_vmalloc_addr (void*) ;
 int offset_in_page (void*) ;
 int sg_init_one (struct scatterlist*,void*,unsigned int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,int ,unsigned int,int ) ;
 int virt_addr_valid (void*) ;
 int vmalloc_to_page (void*) ;

__attribute__((used)) static void
rpmsg_sg_init(struct scatterlist *sg, void *cpu_addr, unsigned int len)
{
 if (is_vmalloc_addr(cpu_addr)) {
  sg_init_table(sg, 1);
  sg_set_page(sg, vmalloc_to_page(cpu_addr), len,
       offset_in_page(cpu_addr));
 } else {
  WARN_ON(!virt_addr_valid(cpu_addr));
  sg_init_one(sg, cpu_addr, len);
 }
}
