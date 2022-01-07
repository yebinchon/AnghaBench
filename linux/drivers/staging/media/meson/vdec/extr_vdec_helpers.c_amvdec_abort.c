
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amvdec_session {TYPE_4__* m2m_ctx; TYPE_1__* core; } ;
struct TYPE_7__ {int q; } ;
struct TYPE_6__ {int q; } ;
struct TYPE_8__ {TYPE_3__ out_q_ctx; TYPE_2__ cap_q_ctx; } ;
struct TYPE_5__ {int dev; } ;


 int dev_info (int ,char*) ;
 int vb2_queue_error (int *) ;

void amvdec_abort(struct amvdec_session *sess)
{
 dev_info(sess->core->dev, "Aborting decoding session!\n");
 vb2_queue_error(&sess->m2m_ctx->cap_q_ctx.q);
 vb2_queue_error(&sess->m2m_ctx->out_q_ctx.q);
}
