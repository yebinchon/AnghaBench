
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qedf_ctx {int * data_src_addr; } ;
struct fc_lport {int dummy; } ;


 struct qedf_ctx* lport_priv (struct fc_lport*) ;

u8 *qedf_get_src_mac(struct fc_lport *lport)
{
 struct qedf_ctx *qedf = lport_priv(lport);

 return qedf->data_src_addr;
}
