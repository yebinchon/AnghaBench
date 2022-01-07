
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_fq {int dummy; } ;


 struct qman_fq* idx_to_fq (int) ;

__attribute__((used)) static struct qman_fq *fqid_to_fq(u32 fqid)
{
 return idx_to_fq(fqid * 2);
}
