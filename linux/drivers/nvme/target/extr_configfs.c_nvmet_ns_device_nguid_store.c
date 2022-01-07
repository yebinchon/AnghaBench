
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvmet_subsys {int lock; } ;
struct nvmet_ns {int nguid; scalar_t__ enabled; struct nvmet_subsys* subsys; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
typedef int nguid ;


 int EBUSY ;
 int EINVAL ;
 int hex_to_bin (char const) ;
 int isxdigit (char const) ;
 int memcpy (int *,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nvmet_ns* to_nvmet_ns (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_ns_device_nguid_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_ns *ns = to_nvmet_ns(item);
 struct nvmet_subsys *subsys = ns->subsys;
 u8 nguid[16];
 const char *p = page;
 int i;
 int ret = 0;

 mutex_lock(&subsys->lock);
 if (ns->enabled) {
  ret = -EBUSY;
  goto out_unlock;
 }

 for (i = 0; i < 16; i++) {
  if (p + 2 > page + count) {
   ret = -EINVAL;
   goto out_unlock;
  }
  if (!isxdigit(p[0]) || !isxdigit(p[1])) {
   ret = -EINVAL;
   goto out_unlock;
  }

  nguid[i] = (hex_to_bin(p[0]) << 4) | hex_to_bin(p[1]);
  p += 2;

  if (*p == '-' || *p == ':')
   p++;
 }

 memcpy(&ns->nguid, nguid, sizeof(nguid));
out_unlock:
 mutex_unlock(&subsys->lock);
 return ret ? ret : count;
}
