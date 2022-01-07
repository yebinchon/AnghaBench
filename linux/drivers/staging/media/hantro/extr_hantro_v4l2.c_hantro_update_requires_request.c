
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {TYPE_3__* m2m_ctx; } ;
struct hantro_ctx {TYPE_4__ fh; } ;
struct TYPE_5__ {int requires_requests; } ;
struct TYPE_6__ {TYPE_1__ q; } ;
struct TYPE_7__ {TYPE_2__ out_q_ctx; } ;







__attribute__((used)) static void
hantro_update_requires_request(struct hantro_ctx *ctx, u32 fourcc)
{
 switch (fourcc) {
 case 130:
  ctx->fh.m2m_ctx->out_q_ctx.q.requires_requests = 0;
  break;
 case 129:
 case 128:
 case 131:
  ctx->fh.m2m_ctx->out_q_ctx.q.requires_requests = 1;
  break;
 default:
  break;
 }
}
