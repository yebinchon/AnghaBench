
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;


 struct qman_portal* get_affine_portal () ;
 int put_affine_portal () ;
 int set_p_vdqcr (struct qman_portal*,struct qman_fq*,int ) ;

__attribute__((used)) static int set_vdqcr(struct qman_portal **p, struct qman_fq *fq, u32 vdqcr)
{
 int ret;

 *p = get_affine_portal();
 ret = set_p_vdqcr(*p, fq, vdqcr);
 put_affine_portal();
 return ret;
}
