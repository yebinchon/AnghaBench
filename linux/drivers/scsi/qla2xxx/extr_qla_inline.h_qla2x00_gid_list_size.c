
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int max_fibre_devices; } ;
struct gid_list_info {int dummy; } ;


 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;

__attribute__((used)) static inline int
qla2x00_gid_list_size(struct qla_hw_data *ha)
{
 if (IS_QLAFX00(ha))
  return sizeof(uint32_t) * 32;
 else
  return sizeof(struct gid_list_info) * ha->max_fibre_devices;
}
