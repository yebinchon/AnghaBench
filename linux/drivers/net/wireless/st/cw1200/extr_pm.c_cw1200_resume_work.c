
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;
struct cw1200_common {int workqueue; } ;


 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;

__attribute__((used)) static int cw1200_resume_work(struct cw1200_common *priv,
          struct delayed_work *work,
          unsigned long tmo)
{
 if ((long)tmo < 0)
  return 1;

 return queue_delayed_work(priv->workqueue, work, tmo);
}
