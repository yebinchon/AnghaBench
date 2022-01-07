
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dev; } ;
struct firmware {int dummy; } ;


 int dev_warn (int *,char*) ;
 scalar_t__ rproc_elf_load_rsc_table (struct rproc*,struct firmware const*) ;

__attribute__((used)) static int stm32_rproc_elf_load_rsc_table(struct rproc *rproc,
       const struct firmware *fw)
{
 if (rproc_elf_load_rsc_table(rproc, fw))
  dev_warn(&rproc->dev, "no resource table found for this firmware\n");

 return 0;
}
