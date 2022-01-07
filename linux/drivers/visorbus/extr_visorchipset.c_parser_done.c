
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser_context {scalar_t__ param_bytes; } ;
struct TYPE_2__ {int controlvm_payload_bytes_buffered; } ;


 TYPE_1__* chipset_dev ;
 int kfree (struct parser_context*) ;

__attribute__((used)) static void parser_done(struct parser_context *ctx)
{
 chipset_dev->controlvm_payload_bytes_buffered -= ctx->param_bytes;
 kfree(ctx);
}
