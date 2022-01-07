
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;
typedef int sense_reason_t ;


 int passthrough_parse_cdb (struct se_cmd*,int ) ;
 int tcmu_queue_cmd ;

__attribute__((used)) static sense_reason_t
tcmu_parse_cdb(struct se_cmd *cmd)
{
 return passthrough_parse_cdb(cmd, tcmu_queue_cmd);
}
