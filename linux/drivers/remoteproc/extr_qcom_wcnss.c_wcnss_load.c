
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int firmware; scalar_t__ priv; } ;
struct qcom_wcnss {int mem_reloc; int mem_size; int mem_phys; int mem_region; int dev; } ;
struct firmware {int dummy; } ;


 int WCNSS_PAS_ID ;
 int qcom_mdt_load (int ,struct firmware const*,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int wcnss_load(struct rproc *rproc, const struct firmware *fw)
{
 struct qcom_wcnss *wcnss = (struct qcom_wcnss *)rproc->priv;

 return qcom_mdt_load(wcnss->dev, fw, rproc->firmware, WCNSS_PAS_ID,
        wcnss->mem_region, wcnss->mem_phys,
        wcnss->mem_size, &wcnss->mem_reloc);
}
