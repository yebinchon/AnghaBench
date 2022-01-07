
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int busnum; } ;
struct mon_bus {int * dent_t; int * dent_u; void* dent_s; } ;


 void* debugfs_create_file (char*,int,int *,struct mon_bus*,int *) ;
 int debugfs_remove (int *) ;
 int * mon_dir ;
 int mon_fops_stat ;
 int mon_fops_text_t ;
 int mon_fops_text_u ;
 int snprintf (char*,int,char*,int) ;

int mon_text_add(struct mon_bus *mbus, const struct usb_bus *ubus)
{
 enum { NAMESZ = 10 };
 char name[NAMESZ];
 int busnum = ubus? ubus->busnum: 0;
 int rc;

 if (mon_dir == ((void*)0))
  return 0;

 if (ubus != ((void*)0)) {
  rc = snprintf(name, NAMESZ, "%dt", busnum);
  if (rc <= 0 || rc >= NAMESZ)
   goto err_print_t;
  mbus->dent_t = debugfs_create_file(name, 0600, mon_dir, mbus,
            &mon_fops_text_t);
 }

 rc = snprintf(name, NAMESZ, "%du", busnum);
 if (rc <= 0 || rc >= NAMESZ)
  goto err_print_u;
 mbus->dent_u = debugfs_create_file(name, 0600, mon_dir, mbus,
        &mon_fops_text_u);

 rc = snprintf(name, NAMESZ, "%ds", busnum);
 if (rc <= 0 || rc >= NAMESZ)
  goto err_print_s;
 mbus->dent_s = debugfs_create_file(name, 0600, mon_dir, mbus,
        &mon_fops_stat);

 return 1;

err_print_s:
 debugfs_remove(mbus->dent_u);
 mbus->dent_u = ((void*)0);
err_print_u:
 if (ubus != ((void*)0)) {
  debugfs_remove(mbus->dent_t);
  mbus->dent_t = ((void*)0);
 }
err_print_t:
 return 0;
}
