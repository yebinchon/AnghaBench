
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_fq {int idx; } ;



__attribute__((used)) static u32 fq_to_tag(struct qman_fq *fq)
{



 return (u32)fq;

}
