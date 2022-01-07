
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smem_header {int * version; } ;
struct qcom_smem {TYPE_1__* regions; } ;
typedef int __le32 ;
struct TYPE_2__ {struct smem_header* virt_base; } ;


 size_t SMEM_MASTER_SBL_VERSION_INDEX ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int qcom_smem_get_sbl_version(struct qcom_smem *smem)
{
 struct smem_header *header;
 __le32 *versions;

 header = smem->regions[0].virt_base;
 versions = header->version;

 return le32_to_cpu(versions[SMEM_MASTER_SBL_VERSION_INDEX]);
}
