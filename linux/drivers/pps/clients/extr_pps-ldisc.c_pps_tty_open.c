
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; struct tty_driver* driver; } ;
struct tty_driver {int name_base; char* driver_name; char* name; } ;
struct pps_source_info {int mode; int path; int name; int * dev; int owner; } ;
struct pps_device {int dev; struct tty_struct* lookup_cookie; } ;


 scalar_t__ IS_ERR (struct pps_device*) ;
 int PPS_CANWAIT ;
 int PPS_CAPTUREBOTH ;
 int PPS_MAX_NAME_LEN ;
 int PPS_OFFSETASSERT ;
 int PPS_OFFSETCLEAR ;
 int PPS_TSFMT_TSPEC ;
 int PTR_ERR (struct pps_device*) ;
 int THIS_MODULE ;
 int alias_n_tty_open (struct tty_struct*) ;
 int dev_info (int ,char*,int ) ;
 struct pps_device* pps_register_source (struct pps_source_info*,int) ;
 int pps_unregister_source (struct pps_device*) ;
 int pr_err (char*,int ) ;
 int snprintf (int ,int ,char*,char*,int) ;

__attribute__((used)) static int pps_tty_open(struct tty_struct *tty)
{
 struct pps_source_info info;
 struct tty_driver *drv = tty->driver;
 int index = tty->index + drv->name_base;
 struct pps_device *pps;
 int ret;

 info.owner = THIS_MODULE;
 info.dev = ((void*)0);
 snprintf(info.name, PPS_MAX_NAME_LEN, "%s%d", drv->driver_name, index);
 snprintf(info.path, PPS_MAX_NAME_LEN, "/dev/%s%d", drv->name, index);
 info.mode = PPS_CAPTUREBOTH | PPS_OFFSETASSERT | PPS_OFFSETCLEAR | PPS_CANWAIT | PPS_TSFMT_TSPEC;



 pps = pps_register_source(&info, PPS_CAPTUREBOTH | PPS_OFFSETASSERT | PPS_OFFSETCLEAR);

 if (IS_ERR(pps)) {
  pr_err("cannot register PPS source \"%s\"\n", info.path);
  return PTR_ERR(pps);
 }
 pps->lookup_cookie = tty;


 ret = alias_n_tty_open(tty);
 if (ret < 0) {
  pr_err("cannot open tty ldisc \"%s\"\n", info.path);
  goto err_unregister;
 }

 dev_info(pps->dev, "source \"%s\" added\n", info.path);

 return 0;

err_unregister:
 pps_unregister_source(pps);
 return ret;
}
