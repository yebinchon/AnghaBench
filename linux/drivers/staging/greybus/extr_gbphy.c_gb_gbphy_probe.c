
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct greybus_bundle_id {int dummy; } ;
struct gbphy_host {int devices; struct gb_bundle* bundle; } ;
struct gbphy_device {int list; } ;
struct gb_bundle {int num_cports; int * cport_desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct gbphy_device*) ;
 int PTR_ERR (struct gbphy_device*) ;
 struct gbphy_device* gb_gbphy_create_dev (struct gb_bundle*,int *) ;
 int gb_gbphy_disconnect (struct gb_bundle*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 int greybus_set_drvdata (struct gb_bundle*,struct gbphy_host*) ;
 struct gbphy_host* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int gb_gbphy_probe(struct gb_bundle *bundle,
     const struct greybus_bundle_id *id)
{
 struct gbphy_host *gbphy_host;
 struct gbphy_device *gbphy_dev;
 int i;

 if (bundle->num_cports == 0)
  return -ENODEV;

 gbphy_host = kzalloc(sizeof(*gbphy_host), GFP_KERNEL);
 if (!gbphy_host)
  return -ENOMEM;

 gbphy_host->bundle = bundle;
 INIT_LIST_HEAD(&gbphy_host->devices);
 greybus_set_drvdata(bundle, gbphy_host);





 for (i = 0; i < bundle->num_cports; ++i) {
  gbphy_dev = gb_gbphy_create_dev(bundle, &bundle->cport_desc[i]);
  if (IS_ERR(gbphy_dev)) {
   gb_gbphy_disconnect(bundle);
   return PTR_ERR(gbphy_dev);
  }
  list_add(&gbphy_dev->list, &gbphy_host->devices);
 }

 gb_pm_runtime_put_autosuspend(bundle);

 return 0;
}
