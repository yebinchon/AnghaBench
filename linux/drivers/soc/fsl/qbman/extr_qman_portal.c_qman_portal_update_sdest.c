
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_portal_config {int channel; int dev; scalar_t__ iommu_domain; } ;
struct pamu_stash_attribute {unsigned int cpu; int cache; } ;


 int DOMAIN_ATTR_FSL_PAMU_STASH ;
 int PAMU_ATTR_CACHE_L1 ;
 int dev_err (int ,char*) ;
 int iommu_domain_set_attr (scalar_t__,int ,struct pamu_stash_attribute*) ;
 int qman_set_sdest (int ,unsigned int) ;

__attribute__((used)) static void qman_portal_update_sdest(const struct qm_portal_config *pcfg,
       unsigned int cpu)
{
 qman_set_sdest(pcfg->channel, cpu);
}
