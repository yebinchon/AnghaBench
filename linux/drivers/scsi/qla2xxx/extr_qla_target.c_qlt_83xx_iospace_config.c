
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int msix_count; } ;


 int QLA_TGT_MODE_ENABLED () ;

void
qlt_83xx_iospace_config(struct qla_hw_data *ha)
{
 if (!QLA_TGT_MODE_ENABLED())
  return;

 ha->msix_count += 1;
}
