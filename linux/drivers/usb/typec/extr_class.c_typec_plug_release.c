
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_plug {int mode_ids; } ;
struct device {int dummy; } ;


 int ida_destroy (int *) ;
 int kfree (struct typec_plug*) ;
 struct typec_plug* to_typec_plug (struct device*) ;

__attribute__((used)) static void typec_plug_release(struct device *dev)
{
 struct typec_plug *plug = to_typec_plug(dev);

 ida_destroy(&plug->mode_ids);
 kfree(plug);
}
