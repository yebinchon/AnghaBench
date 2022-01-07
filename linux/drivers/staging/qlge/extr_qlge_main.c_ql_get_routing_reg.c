
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int RT_DATA ;
 int RT_IDX ;
 int RT_IDX_IDX_SHIFT ;
 int RT_IDX_MR ;
 int RT_IDX_MW ;
 int RT_IDX_RS ;
 int RT_IDX_TYPE_NICQ ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

int ql_get_routing_reg(struct ql_adapter *qdev, u32 index, u32 *value)
{
 int status = 0;

 status = ql_wait_reg_rdy(qdev, RT_IDX, RT_IDX_MW, 0);
 if (status)
  goto exit;

 ql_write32(qdev, RT_IDX,
     RT_IDX_TYPE_NICQ | RT_IDX_RS | (index << RT_IDX_IDX_SHIFT));
 status = ql_wait_reg_rdy(qdev, RT_IDX, RT_IDX_MR, 0);
 if (status)
  goto exit;
 *value = ql_read32(qdev, RT_DATA);
exit:
 return status;
}
