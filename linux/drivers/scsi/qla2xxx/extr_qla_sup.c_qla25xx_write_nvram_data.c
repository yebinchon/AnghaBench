
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int flt_region_vpd_nvram; TYPE_1__* isp_ops; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_6__ {int (* write_optrom ) (TYPE_2__*,int *,int,int ) ;int (* read_optrom ) (TYPE_2__*,int *,int,int ) ;} ;


 int QLA_MEMORY_ALLOC_FAILED ;
 int QLA_SUCCESS ;
 int RMW_BUFFER_SIZE ;
 int memcpy (int *,void*,int) ;
 int stub1 (TYPE_2__*,int *,int,int ) ;
 int stub2 (TYPE_2__*,int *,int,int ) ;
 int vfree (int *) ;
 int * vmalloc (int ) ;

int
qla25xx_write_nvram_data(scsi_qla_host_t *vha, void *buf, uint32_t naddr,
    uint32_t bytes)
{
 struct qla_hw_data *ha = vha->hw;
 uint8_t *dbuf = vmalloc(RMW_BUFFER_SIZE);

 if (!dbuf)
  return QLA_MEMORY_ALLOC_FAILED;
 ha->isp_ops->read_optrom(vha, dbuf, ha->flt_region_vpd_nvram << 2,
     RMW_BUFFER_SIZE);
 memcpy(dbuf + (naddr << 2), buf, bytes);
 ha->isp_ops->write_optrom(vha, dbuf, ha->flt_region_vpd_nvram << 2,
     RMW_BUFFER_SIZE);
 vfree(dbuf);

 return QLA_SUCCESS;
}
