
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_stream_runtime {int node; struct slim_device* dev; int name; } ;
struct slim_device {int stream_list_lock; int stream_list; } ;


 int ENOMEM ;
 struct slim_stream_runtime* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kasprintf (int ,char*,char const*) ;
 int kfree (struct slim_stream_runtime*) ;
 struct slim_stream_runtime* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct slim_stream_runtime *slim_stream_allocate(struct slim_device *dev,
       const char *name)
{
 struct slim_stream_runtime *rt;

 rt = kzalloc(sizeof(*rt), GFP_KERNEL);
 if (!rt)
  return ERR_PTR(-ENOMEM);

 rt->name = kasprintf(GFP_KERNEL, "slim-%s", name);
 if (!rt->name) {
  kfree(rt);
  return ERR_PTR(-ENOMEM);
 }

 rt->dev = dev;
 spin_lock(&dev->stream_list_lock);
 list_add_tail(&rt->node, &dev->stream_list);
 spin_unlock(&dev->stream_list_lock);

 return rt;
}
