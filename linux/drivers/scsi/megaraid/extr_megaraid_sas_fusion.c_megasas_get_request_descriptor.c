
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union MEGASAS_REQUEST_DESCRIPTOR_UNION {int dummy; } MEGASAS_REQUEST_DESCRIPTOR_UNION ;
typedef int u8 ;
typedef int u16 ;
struct megasas_instance {struct fusion_context* ctrl_context; } ;
struct fusion_context {int * req_frames_desc; } ;



__attribute__((used)) static union MEGASAS_REQUEST_DESCRIPTOR_UNION *
megasas_get_request_descriptor(struct megasas_instance *instance, u16 index)
{
 u8 *p;
 struct fusion_context *fusion;

 fusion = instance->ctrl_context;
 p = fusion->req_frames_desc +
  sizeof(union MEGASAS_REQUEST_DESCRIPTOR_UNION) * index;

 return (union MEGASAS_REQUEST_DESCRIPTOR_UNION *)p;
}
