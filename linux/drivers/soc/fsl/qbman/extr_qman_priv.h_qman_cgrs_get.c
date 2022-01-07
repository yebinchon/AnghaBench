
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* state; } ;
struct qman_cgrs {TYPE_1__ q; } ;


 int CGR_BIT (int ) ;
 size_t CGR_WORD (int ) ;

__attribute__((used)) static inline int qman_cgrs_get(struct qman_cgrs *c, u8 cgr)
{
 return c->q.state[CGR_WORD(cgr)] & CGR_BIT(cgr);
}
