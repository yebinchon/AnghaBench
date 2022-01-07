
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; int cmd; } ;
struct TYPE_3__ {void* vlan_id; void* vlan_valid; int rgid; TYPE_2__ hdr; } ;
union ism_query_rgid {TYPE_1__ request; } ;
typedef int u64 ;
typedef void* u32 ;
struct smcd_dev {struct ism_dev* priv; } ;
struct ism_dev {int dummy; } ;
typedef int cmd ;


 int ISM_QUERY_RGID ;
 int ism_cmd (struct ism_dev*,union ism_query_rgid*) ;
 int memset (union ism_query_rgid*,int ,int) ;

__attribute__((used)) static int ism_query_rgid(struct smcd_dev *smcd, u64 rgid, u32 vid_valid,
     u32 vid)
{
 struct ism_dev *ism = smcd->priv;
 union ism_query_rgid cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.request.hdr.cmd = ISM_QUERY_RGID;
 cmd.request.hdr.len = sizeof(cmd.request);

 cmd.request.rgid = rgid;
 cmd.request.vlan_valid = vid_valid;
 cmd.request.vlan_id = vid;

 return ism_cmd(ism, &cmd);
}
