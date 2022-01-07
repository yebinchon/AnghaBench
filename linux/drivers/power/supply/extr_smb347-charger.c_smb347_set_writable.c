
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int regmap; } ;


 int CMD_A ;
 int CMD_A_ALLOW_WRITE ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int smb347_set_writable(struct smb347_charger *smb, bool writable)
{
 return regmap_update_bits(smb->regmap, CMD_A, CMD_A_ALLOW_WRITE,
      writable ? CMD_A_ALLOW_WRITE : 0);
}
