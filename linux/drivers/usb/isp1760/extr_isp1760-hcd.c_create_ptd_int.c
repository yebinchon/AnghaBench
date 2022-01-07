
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptd {int dummy; } ;
struct isp1760_qtd {int dummy; } ;
struct isp1760_qh {int dummy; } ;


 int create_ptd_atl (struct isp1760_qh*,struct isp1760_qtd*,struct ptd*) ;
 int transform_add_int (struct isp1760_qh*,struct isp1760_qtd*,struct ptd*) ;

__attribute__((used)) static void create_ptd_int(struct isp1760_qh *qh,
   struct isp1760_qtd *qtd, struct ptd *ptd)
{
 create_ptd_atl(qh, qtd, ptd);
 transform_add_int(qh, qtd, ptd);
}
