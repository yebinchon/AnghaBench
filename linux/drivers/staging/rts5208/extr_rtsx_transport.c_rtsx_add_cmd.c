
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtsx_chip {int ci; TYPE_1__* rtsx; scalar_t__ host_cmds_ptr; } ;
typedef int __le32 ;
struct TYPE_2__ {int reg_lock; } ;


 int HOST_CMDS_BUF_LEN ;
 int cpu_to_le32 (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void rtsx_add_cmd(struct rtsx_chip *chip,
    u8 cmd_type, u16 reg_addr, u8 mask, u8 data)
{
 __le32 *cb = (__le32 *)(chip->host_cmds_ptr);
 u32 val = 0;

 val |= (u32)(cmd_type & 0x03) << 30;
 val |= (u32)(reg_addr & 0x3FFF) << 16;
 val |= (u32)mask << 8;
 val |= (u32)data;

 spin_lock_irq(&chip->rtsx->reg_lock);
 if (chip->ci < (HOST_CMDS_BUF_LEN / 4))
  cb[(chip->ci)++] = cpu_to_le32(val);

 spin_unlock_irq(&chip->rtsx->reg_lock);
}
