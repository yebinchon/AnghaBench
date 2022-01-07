
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int map_tag; int map_cpu; int tag; } ;
struct usbg_cmd {struct f_uas* fu; int tag; TYPE_1__ se_cmd; } ;
struct tcm_usbg_nexus {struct se_session* tvn_se_sess; } ;
struct se_session {scalar_t__ sess_cmd_map; int sess_tag_pool; } ;
struct f_uas {int dummy; } ;


 int ENOMEM ;
 struct usbg_cmd* ERR_PTR (int ) ;
 int memset (struct usbg_cmd*,int ,int) ;
 int sbitmap_queue_get (int *,int*) ;

__attribute__((used)) static struct usbg_cmd *usbg_get_cmd(struct f_uas *fu,
  struct tcm_usbg_nexus *tv_nexus, u32 scsi_tag)
{
 struct se_session *se_sess = tv_nexus->tvn_se_sess;
 struct usbg_cmd *cmd;
 int tag, cpu;

 tag = sbitmap_queue_get(&se_sess->sess_tag_pool, &cpu);
 if (tag < 0)
  return ERR_PTR(-ENOMEM);

 cmd = &((struct usbg_cmd *)se_sess->sess_cmd_map)[tag];
 memset(cmd, 0, sizeof(*cmd));
 cmd->se_cmd.map_tag = tag;
 cmd->se_cmd.map_cpu = cpu;
 cmd->se_cmd.tag = cmd->tag = scsi_tag;
 cmd->fu = fu;

 return cmd;
}
