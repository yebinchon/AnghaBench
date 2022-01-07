
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_fq {int flags; } ;



__attribute__((used)) static inline void fq_set(struct qman_fq *fq, u32 mask)
{
 fq->flags |= mask;
}
