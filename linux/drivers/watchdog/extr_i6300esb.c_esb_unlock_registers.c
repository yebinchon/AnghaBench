
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esb_dev {int dummy; } ;


 int ESB_RELOAD_REG (struct esb_dev*) ;
 int ESB_UNLOCK1 ;
 int ESB_UNLOCK2 ;
 int writew (int ,int ) ;

__attribute__((used)) static inline void esb_unlock_registers(struct esb_dev *edev)
{
 writew(ESB_UNLOCK1, ESB_RELOAD_REG(edev));
 writew(ESB_UNLOCK2, ESB_RELOAD_REG(edev));
}
