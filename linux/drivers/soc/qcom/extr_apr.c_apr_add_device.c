
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct apr_device_id {scalar_t__ svc_id; int domain_id; int name; int svc_version; } ;
struct TYPE_5__ {int * driver; int release; struct device_node* of_node; struct device* parent; int * bus; } ;
struct apr_device {TYPE_1__ dev; int name; int version; int domain_id; scalar_t__ svc_id; int lock; } ;
struct apr {int svcs_lock; int svcs_idr; } ;


 int APR_NAME_SIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int apr_dev_release ;
 int aprbus ;
 int dev_err (struct device*,char*,int) ;
 struct apr* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,char*,int ,int ,scalar_t__) ;
 int device_register (TYPE_1__*) ;
 int idr_alloc (int *,struct apr_device*,scalar_t__,scalar_t__,int ) ;
 struct apr_device* kzalloc (int,int ) ;
 int put_device (TYPE_1__*) ;
 int snprintf (int ,int ,char*,struct device_node*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int strscpy (int ,int ,int ) ;

__attribute__((used)) static int apr_add_device(struct device *dev, struct device_node *np,
     const struct apr_device_id *id)
{
 struct apr *apr = dev_get_drvdata(dev);
 struct apr_device *adev = ((void*)0);
 int ret;

 adev = kzalloc(sizeof(*adev), GFP_KERNEL);
 if (!adev)
  return -ENOMEM;

 spin_lock_init(&adev->lock);

 adev->svc_id = id->svc_id;
 adev->domain_id = id->domain_id;
 adev->version = id->svc_version;
 if (np)
  snprintf(adev->name, APR_NAME_SIZE, "%pOFn", np);
 else
  strscpy(adev->name, id->name, APR_NAME_SIZE);

 dev_set_name(&adev->dev, "aprsvc:%s:%x:%x", adev->name,
       id->domain_id, id->svc_id);

 adev->dev.bus = &aprbus;
 adev->dev.parent = dev;
 adev->dev.of_node = np;
 adev->dev.release = apr_dev_release;
 adev->dev.driver = ((void*)0);

 spin_lock(&apr->svcs_lock);
 idr_alloc(&apr->svcs_idr, adev, id->svc_id,
    id->svc_id + 1, GFP_ATOMIC);
 spin_unlock(&apr->svcs_lock);

 dev_info(dev, "Adding APR dev: %s\n", dev_name(&adev->dev));

 ret = device_register(&adev->dev);
 if (ret) {
  dev_err(dev, "device_register failed: %d\n", ret);
  put_device(&adev->dev);
 }

 return ret;
}
