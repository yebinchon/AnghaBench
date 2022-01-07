
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qla_hw_data {TYPE_1__* pdev; int fw_attributes; int fw_subminor_version; int fw_minor_version; int fw_major_version; } ;
struct qla2xxx_fw_dump {void* subsystem_device; void* subsystem_vendor; void* device; void* vendor; void* fw_attributes; void* fw_subminor_version; void* fw_minor_version; void* fw_major_version; } ;
struct TYPE_2__ {int subsystem_device; int subsystem_vendor; int device; int vendor; } ;


 void* htonl (int ) ;

__attribute__((used)) static inline void
qla2xxx_prep_dump(struct qla_hw_data *ha, struct qla2xxx_fw_dump *fw_dump)
{
 fw_dump->fw_major_version = htonl(ha->fw_major_version);
 fw_dump->fw_minor_version = htonl(ha->fw_minor_version);
 fw_dump->fw_subminor_version = htonl(ha->fw_subminor_version);
 fw_dump->fw_attributes = htonl(ha->fw_attributes);

 fw_dump->vendor = htonl(ha->pdev->vendor);
 fw_dump->device = htonl(ha->pdev->device);
 fw_dump->subsystem_vendor = htonl(ha->pdev->subsystem_vendor);
 fw_dump->subsystem_device = htonl(ha->pdev->subsystem_device);
}
