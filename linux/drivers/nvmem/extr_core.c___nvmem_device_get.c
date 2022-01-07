
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int refcnt; int dev; int owner; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 struct nvmem_device* ERR_PTR (int ) ;
 int dev_err (int *,char*,int ) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmem_dev_name (struct nvmem_device*) ;
 struct nvmem_device* nvmem_find (char const*) ;
 int nvmem_mutex ;
 struct nvmem_device* of_nvmem_find (struct device_node*) ;
 int put_device (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct nvmem_device *__nvmem_device_get(struct device_node *np,
            const char *nvmem_name)
{
 struct nvmem_device *nvmem = ((void*)0);

 mutex_lock(&nvmem_mutex);
 nvmem = np ? of_nvmem_find(np) : nvmem_find(nvmem_name);
 mutex_unlock(&nvmem_mutex);
 if (!nvmem)
  return ERR_PTR(-EPROBE_DEFER);

 if (!try_module_get(nvmem->owner)) {
  dev_err(&nvmem->dev,
   "could not increase module refcount for cell %s\n",
   nvmem_dev_name(nvmem));

  put_device(&nvmem->dev);
  return ERR_PTR(-EINVAL);
 }

 kref_get(&nvmem->refcnt);

 return nvmem;
}
