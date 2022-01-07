
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct se_session {int dummy; } ;
struct se_cmd {int dummy; } ;


 int target_submit_cmd_map_sgls (struct se_cmd*,struct se_session*,unsigned char*,unsigned char*,int ,int ,int,int,int,int *,int ,int *,int ,int *,int ) ;

int target_submit_cmd(struct se_cmd *se_cmd, struct se_session *se_sess,
  unsigned char *cdb, unsigned char *sense, u64 unpacked_lun,
  u32 data_length, int task_attr, int data_dir, int flags)
{
 return target_submit_cmd_map_sgls(se_cmd, se_sess, cdb, sense,
   unpacked_lun, data_length, task_attr, data_dir,
   flags, ((void*)0), 0, ((void*)0), 0, ((void*)0), 0);
}
