
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blogic_adapter {scalar_t__ io_addr; } ;


 scalar_t__ BLOGIC_CMD_PARM_REG ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void blogic_setcmdparam(struct blogic_adapter *adapter,
     unsigned char value)
{
 outb(value, adapter->io_addr + BLOGIC_CMD_PARM_REG);
}
