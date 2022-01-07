
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_btt {struct btt* btt; } ;
struct btt {int dummy; } ;


 int btt_fini (struct btt*) ;

int nvdimm_namespace_detach_btt(struct nd_btt *nd_btt)
{
 struct btt *btt = nd_btt->btt;

 btt_fini(btt);
 nd_btt->btt = ((void*)0);

 return 0;
}
