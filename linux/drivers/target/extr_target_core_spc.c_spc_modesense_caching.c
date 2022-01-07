
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_device {int dummy; } ;
struct se_cmd {struct se_device* se_dev; } ;


 scalar_t__ target_check_wce (struct se_device*) ;

__attribute__((used)) static int spc_modesense_caching(struct se_cmd *cmd, u8 pc, u8 *p)
{
 struct se_device *dev = cmd->se_dev;

 p[0] = 0x08;
 p[1] = 0x12;


 if (pc == 1)
  goto out;

 if (target_check_wce(dev))
  p[2] = 0x04;
 p[12] = 0x20;

out:
 return 20;
}
