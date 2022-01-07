
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_nhi {scalar_t__ iobase; } ;
typedef enum nhi_fw_mode { ____Placeholder_nhi_fw_mode } nhi_fw_mode ;


 scalar_t__ REG_OUTMAIL_CMD ;
 int REG_OUTMAIL_CMD_OPMODE_MASK ;
 int REG_OUTMAIL_CMD_OPMODE_SHIFT ;
 int ioread32 (scalar_t__) ;

enum nhi_fw_mode nhi_mailbox_mode(struct tb_nhi *nhi)
{
 u32 val;

 val = ioread32(nhi->iobase + REG_OUTMAIL_CMD);
 val &= REG_OUTMAIL_CMD_OPMODE_MASK;
 val >>= REG_OUTMAIL_CMD_OPMODE_SHIFT;

 return (enum nhi_fw_mode)val;
}
