
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_mux {int dev; } ;


 int IS_ERR_OR_NULL (struct typec_mux*) ;
 int device_unregister (int *) ;

void typec_mux_unregister(struct typec_mux *mux)
{
 if (!IS_ERR_OR_NULL(mux))
  device_unregister(&mux->dev);
}
