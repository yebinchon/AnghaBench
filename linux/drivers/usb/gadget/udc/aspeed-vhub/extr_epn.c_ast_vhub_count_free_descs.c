
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_last; int d_next; } ;
struct ast_vhub_ep {TYPE_1__ epn; } ;


 int AST_VHUB_DESCS_COUNT ;

__attribute__((used)) static inline unsigned int ast_vhub_count_free_descs(struct ast_vhub_ep *ep)
{





 return (ep->epn.d_last + AST_VHUB_DESCS_COUNT - ep->epn.d_next - 1) &
  (AST_VHUB_DESCS_COUNT - 1);
}
