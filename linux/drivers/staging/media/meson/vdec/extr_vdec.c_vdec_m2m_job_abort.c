
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amvdec_session {int m2m_ctx; int m2m_dev; } ;


 int v4l2_m2m_job_finish (int ,int ) ;

__attribute__((used)) static void vdec_m2m_job_abort(void *priv)
{
 struct amvdec_session *sess = priv;

 v4l2_m2m_job_finish(sess->m2m_dev, sess->m2m_ctx);
}
