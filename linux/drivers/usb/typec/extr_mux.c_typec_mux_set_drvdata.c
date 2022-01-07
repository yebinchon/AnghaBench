
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_mux {int dev; } ;


 int dev_set_drvdata (int *,void*) ;

void typec_mux_set_drvdata(struct typec_mux *mux, void *data)
{
 dev_set_drvdata(&mux->dev, data);
}
