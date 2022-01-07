
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct visor_controlvm_parameters_header {int dummy; } ;
struct parser_context {unsigned long allocbytes; scalar_t__ param_bytes; int byte_stream; int data; } ;
struct TYPE_2__ {scalar_t__ controlvm_payload_bytes_buffered; } ;


 int GFP_KERNEL ;
 scalar_t__ MAX_CONTROLVM_PAYLOAD_BYTES ;
 int MEMREMAP_WB ;
 TYPE_1__* chipset_dev ;
 int kfree (struct parser_context*) ;
 struct parser_context* kzalloc (unsigned long,int ) ;
 int memcpy (int *,void*,scalar_t__) ;
 void* memremap (int ,scalar_t__,int ) ;
 int memunmap (void*) ;

__attribute__((used)) static struct parser_context *parser_init_stream(u64 addr, u32 bytes,
       bool *retry)
{
 unsigned long allocbytes;
 struct parser_context *ctx;
 void *mapping;

 *retry = 0;

 allocbytes = (unsigned long)bytes + 1 + (sizeof(struct parser_context) -
       sizeof(struct visor_controlvm_parameters_header));
 if ((chipset_dev->controlvm_payload_bytes_buffered + bytes) >
      MAX_CONTROLVM_PAYLOAD_BYTES) {
  *retry = 1;
  return ((void*)0);
 }
 ctx = kzalloc(allocbytes, GFP_KERNEL);
 if (!ctx) {
  *retry = 1;
  return ((void*)0);
 }
 ctx->allocbytes = allocbytes;
 ctx->param_bytes = bytes;
 mapping = memremap(addr, bytes, MEMREMAP_WB);
 if (!mapping)
  goto err_finish_ctx;
 memcpy(&ctx->data, mapping, bytes);
 memunmap(mapping);
 ctx->byte_stream = 1;
 chipset_dev->controlvm_payload_bytes_buffered += ctx->param_bytes;
 return ctx;

err_finish_ctx:
 kfree(ctx);
 return ((void*)0);
}
