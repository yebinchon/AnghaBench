
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amvdec_session {int esparser_queue_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void vdec_m2m_device_run(void *priv)
{
 struct amvdec_session *sess = priv;

 schedule_work(&sess->esparser_queue_work);
}
