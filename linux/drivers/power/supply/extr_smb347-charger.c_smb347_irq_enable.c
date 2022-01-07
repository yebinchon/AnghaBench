
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int dummy; } ;


 int smb347_irq_set (struct smb347_charger*,int) ;

__attribute__((used)) static inline int smb347_irq_enable(struct smb347_charger *smb)
{
 return smb347_irq_set(smb, 1);
}
