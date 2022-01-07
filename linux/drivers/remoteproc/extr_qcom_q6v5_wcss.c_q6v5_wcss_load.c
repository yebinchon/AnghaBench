
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int firmware; struct q6v5_wcss* priv; } ;
struct q6v5_wcss {int mem_reloc; int mem_size; int mem_phys; int mem_region; int dev; } ;
struct firmware {int dummy; } ;


 int qcom_mdt_load_no_init (int ,struct firmware const*,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int q6v5_wcss_load(struct rproc *rproc, const struct firmware *fw)
{
 struct q6v5_wcss *wcss = rproc->priv;

 return qcom_mdt_load_no_init(wcss->dev, fw, rproc->firmware,
         0, wcss->mem_region, wcss->mem_phys,
         wcss->mem_size, &wcss->mem_reloc);
}
