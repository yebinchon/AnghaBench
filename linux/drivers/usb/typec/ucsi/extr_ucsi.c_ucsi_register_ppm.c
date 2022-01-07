
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ppm {int dummy; } ;
struct ucsi {int work; struct ucsi_ppm* ppm; struct device* dev; int ppm_lock; int complete; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct ucsi* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int init_completion (int *) ;
 struct ucsi* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int queue_work (int ,int *) ;
 int system_long_wq ;
 int ucsi_init ;

struct ucsi *ucsi_register_ppm(struct device *dev, struct ucsi_ppm *ppm)
{
 struct ucsi *ucsi;

 ucsi = kzalloc(sizeof(*ucsi), GFP_KERNEL);
 if (!ucsi)
  return ERR_PTR(-ENOMEM);

 INIT_WORK(&ucsi->work, ucsi_init);
 init_completion(&ucsi->complete);
 mutex_init(&ucsi->ppm_lock);

 ucsi->dev = dev;
 ucsi->ppm = ppm;





 queue_work(system_long_wq, &ucsi->work);

 return ucsi;
}
