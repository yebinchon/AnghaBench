
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int deleted_refs; int new_refs; } ;


 int __free_recorded_refs (int *) ;

__attribute__((used)) static void free_recorded_refs(struct send_ctx *sctx)
{
 __free_recorded_refs(&sctx->new_refs);
 __free_recorded_refs(&sctx->deleted_refs);
}
