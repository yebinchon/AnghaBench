
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; scalar_t__ end; scalar_t__ start; } ;
struct pnp_dev {int dev; } ;
typedef scalar_t__ resource_size_t ;


 int GFP_KERNEL ;
 int IORESOURCE_BUSY ;
 int dev_info (int *,char*,struct resource*,char*) ;
 char* dev_name (int *) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 struct resource* request_mem_region (scalar_t__,scalar_t__,char*) ;
 struct resource* request_region (scalar_t__,scalar_t__,char*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void reserve_range(struct pnp_dev *dev, struct resource *r, int port)
{
 char *regionid;
 const char *pnpid = dev_name(&dev->dev);
 resource_size_t start = r->start, end = r->end;
 struct resource *res;

 regionid = kmalloc(16, GFP_KERNEL);
 if (!regionid)
  return;

 snprintf(regionid, 16, "pnp %s", pnpid);
 if (port)
  res = request_region(start, end - start + 1, regionid);
 else
  res = request_mem_region(start, end - start + 1, regionid);
 if (res)
  res->flags &= ~IORESOURCE_BUSY;
 else
  kfree(regionid);






 dev_info(&dev->dev, "%pR %s reserved\n", r,
   res ? "has been" : "could not be");
}
