
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ u16 ;
struct qedf_rport {int sq_mem_size; scalar_t__ sq_prod_idx; int fw_sq_prod_idx; } ;
struct fcoe_wqe {int dummy; } ;



u16 qedf_get_sqe_idx(struct qedf_rport *fcport)
{
 uint16_t total_sqe = (fcport->sq_mem_size)/(sizeof(struct fcoe_wqe));
 u16 rval;

 rval = fcport->sq_prod_idx;


 fcport->sq_prod_idx++;
 fcport->fw_sq_prod_idx++;
 if (fcport->sq_prod_idx == total_sqe)
  fcport->sq_prod_idx = 0;

 return rval;
}
