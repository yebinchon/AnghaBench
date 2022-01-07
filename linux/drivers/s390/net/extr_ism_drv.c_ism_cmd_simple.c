
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int cmd; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union ism_cmd_simple {TYPE_2__ request; } ;
typedef int u32 ;
struct ism_dev {int dummy; } ;
typedef int cmd ;


 int ism_cmd (struct ism_dev*,union ism_cmd_simple*) ;
 int memset (union ism_cmd_simple*,int ,int) ;

__attribute__((used)) static int ism_cmd_simple(struct ism_dev *ism, u32 cmd_code)
{
 union ism_cmd_simple cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.request.hdr.cmd = cmd_code;
 cmd.request.hdr.len = sizeof(cmd.request);

 return ism_cmd(ism, &cmd);
}
