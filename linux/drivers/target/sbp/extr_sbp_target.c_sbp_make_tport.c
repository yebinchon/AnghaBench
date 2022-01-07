
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct target_fabric_configfs {int dummy; } ;
struct se_wwn {int dummy; } ;
struct sbp_tport {struct se_wwn tport_wwn; int tport_name; int guid; } ;
struct config_group {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct se_wwn* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int SBP_NAMELEN ;
 struct sbp_tport* kzalloc (int,int ) ;
 int sbp_format_wwn (int ,int ,int ) ;
 scalar_t__ sbp_parse_wwn (char const*,int *) ;

__attribute__((used)) static struct se_wwn *sbp_make_tport(
  struct target_fabric_configfs *tf,
  struct config_group *group,
  const char *name)
{
 struct sbp_tport *tport;
 u64 guid = 0;

 if (sbp_parse_wwn(name, &guid) < 0)
  return ERR_PTR(-EINVAL);

 tport = kzalloc(sizeof(*tport), GFP_KERNEL);
 if (!tport)
  return ERR_PTR(-ENOMEM);

 tport->guid = guid;
 sbp_format_wwn(tport->tport_name, SBP_NAMELEN, guid);

 return &tport->tport_wwn;
}
