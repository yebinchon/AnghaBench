
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_controlvm_parameters_header {int name_offset; scalar_t__ name_length; } ;
struct parser_context {unsigned long param_bytes; char* curr; scalar_t__ bytes_remaining; struct visor_controlvm_parameters_header data; } ;


 void* parser_string_get (char*,scalar_t__) ;

__attribute__((used)) static void *parser_name_get(struct parser_context *ctx)
{
 struct visor_controlvm_parameters_header *phdr;

 phdr = &ctx->data;
 if ((unsigned long)phdr->name_offset +
     (unsigned long)phdr->name_length > ctx->param_bytes)
  return ((void*)0);
 ctx->curr = (char *)&phdr + phdr->name_offset;
 ctx->bytes_remaining = phdr->name_length;
 return parser_string_get(ctx->curr, phdr->name_length);
}
