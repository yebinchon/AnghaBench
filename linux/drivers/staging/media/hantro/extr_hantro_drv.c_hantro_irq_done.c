
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_dev {int watchdog_work; int m2m_dev; } ;
struct hantro_ctx {int dummy; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 scalar_t__ cancel_delayed_work (int *) ;
 int hantro_job_finish (struct hantro_dev*,struct hantro_ctx*,unsigned int,int) ;
 struct hantro_ctx* v4l2_m2m_get_curr_priv (int ) ;

void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
       enum vb2_buffer_state result)
{
 struct hantro_ctx *ctx =
  v4l2_m2m_get_curr_priv(vpu->m2m_dev);






 if (cancel_delayed_work(&vpu->watchdog_work))
  hantro_job_finish(vpu, ctx, bytesused, result);
}
