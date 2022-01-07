
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int (* apply ) (struct omap_overlay_manager*) ;int name; } ;
struct omap_overlay {int (* unset_manager ) (struct omap_overlay*) ;int (* set_manager ) (struct omap_overlay*,struct omap_overlay_manager*) ;struct omap_overlay_manager* manager; } ;
typedef size_t ssize_t ;


 int DSSDBG (char*,int ) ;
 int DSSERR (char*) ;
 size_t EINVAL ;
 int dispc_runtime_get () ;
 int dispc_runtime_put () ;
 int omap_dss_get_num_overlay_managers () ;
 struct omap_overlay_manager* omap_dss_get_overlay_manager (int) ;
 int stub1 (struct omap_overlay*) ;
 int stub2 (struct omap_overlay_manager*) ;
 int stub3 (struct omap_overlay*,struct omap_overlay_manager*) ;
 int stub4 (struct omap_overlay_manager*) ;
 scalar_t__ sysfs_streq (char const*,int ) ;

__attribute__((used)) static ssize_t overlay_manager_store(struct omap_overlay *ovl, const char *buf,
  size_t size)
{
 int i, r;
 struct omap_overlay_manager *mgr = ((void*)0);
 struct omap_overlay_manager *old_mgr;
 int len = size;

 if (buf[size-1] == '\n')
  --len;

 if (len > 0) {
  for (i = 0; i < omap_dss_get_num_overlay_managers(); ++i) {
   mgr = omap_dss_get_overlay_manager(i);

   if (sysfs_streq(buf, mgr->name))
    break;

   mgr = ((void*)0);
  }
 }

 if (len > 0 && mgr == ((void*)0))
  return -EINVAL;

 if (mgr)
  DSSDBG("manager %s found\n", mgr->name);

 if (mgr == ovl->manager)
  return size;

 old_mgr = ovl->manager;

 r = dispc_runtime_get();
 if (r)
  return r;


 if (old_mgr) {
  r = ovl->unset_manager(ovl);
  if (r) {
   DSSERR("detach failed\n");
   goto err;
  }

  r = old_mgr->apply(old_mgr);
  if (r)
   goto err;
 }

 if (mgr) {
  r = ovl->set_manager(ovl, mgr);
  if (r) {
   DSSERR("Failed to attach overlay\n");
   goto err;
  }

  r = mgr->apply(mgr);
  if (r)
   goto err;
 }

 dispc_runtime_put();

 return size;

err:
 dispc_runtime_put();
 return r;
}
