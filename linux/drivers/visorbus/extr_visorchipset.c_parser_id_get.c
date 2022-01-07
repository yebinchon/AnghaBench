
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int const id; } ;
struct parser_context {TYPE_1__ data; } ;
typedef int guid_t ;



__attribute__((used)) static const guid_t *parser_id_get(struct parser_context *ctx)
{
 return &ctx->data.id;
}
