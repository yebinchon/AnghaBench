
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iscsi_cmd {int dummy; } ;


 int iscsit_add_reject_from_cmd (struct iscsi_cmd*,int ,int,unsigned char*) ;

__attribute__((used)) static int iscsit_add_reject_cmd(struct iscsi_cmd *cmd, u8 reason,
     unsigned char *buf)
{
 return iscsit_add_reject_from_cmd(cmd, reason, 1, buf);
}
