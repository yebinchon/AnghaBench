
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_wwn {int dummy; } ;
struct usbg_tport {struct se_wwn tport_wwn; int tport_name; int tport_wwpn; } ;
struct target_fabric_configfs {int dummy; } ;
struct config_group {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct se_wwn* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct usbg_tport* kzalloc (int,int ) ;
 int snprintf (int ,int,char*,char const*) ;
 char* usbg_check_wwn (char const*) ;

__attribute__((used)) static struct se_wwn *usbg_make_tport(
 struct target_fabric_configfs *tf,
 struct config_group *group,
 const char *name)
{
 struct usbg_tport *tport;
 const char *wnn_name;
 u64 wwpn = 0;

 wnn_name = usbg_check_wwn(name);
 if (!wnn_name)
  return ERR_PTR(-EINVAL);

 tport = kzalloc(sizeof(struct usbg_tport), GFP_KERNEL);
 if (!(tport))
  return ERR_PTR(-ENOMEM);

 tport->tport_wwpn = wwpn;
 snprintf(tport->tport_name, sizeof(tport->tport_name), "%s", wnn_name);
 return &tport->tport_wwn;
}
