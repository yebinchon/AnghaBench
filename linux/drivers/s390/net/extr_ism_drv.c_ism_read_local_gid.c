
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int gid; } ;
struct TYPE_5__ {int len; int cmd; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
union ism_read_gid {TYPE_4__ response; TYPE_2__ request; } ;
struct ism_dev {TYPE_3__* smcd; } ;
typedef int cmd ;
struct TYPE_7__ {int local_gid; } ;


 int ISM_READ_GID ;
 int ism_cmd (struct ism_dev*,union ism_read_gid*) ;
 int memset (union ism_read_gid*,int ,int) ;

__attribute__((used)) static int ism_read_local_gid(struct ism_dev *ism)
{
 union ism_read_gid cmd;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.request.hdr.cmd = ISM_READ_GID;
 cmd.request.hdr.len = sizeof(cmd.request);

 ret = ism_cmd(ism, &cmd);
 if (ret)
  goto out;

 ism->smcd->local_gid = cmd.response.gid;
out:
 return ret;
}
