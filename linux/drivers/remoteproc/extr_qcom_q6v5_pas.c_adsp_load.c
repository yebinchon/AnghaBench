
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int firmware; scalar_t__ priv; } ;
struct qcom_adsp {int mem_reloc; int mem_size; int mem_phys; int mem_region; int pas_id; int dev; } ;
struct firmware {int dummy; } ;


 int qcom_mdt_load (int ,struct firmware const*,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int adsp_load(struct rproc *rproc, const struct firmware *fw)
{
 struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;

 return qcom_mdt_load(adsp->dev, fw, rproc->firmware, adsp->pas_id,
        adsp->mem_region, adsp->mem_phys, adsp->mem_size,
        &adsp->mem_reloc);

}
