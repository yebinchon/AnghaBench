
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int INTERRUPT_STATUS ;
 int inw (int ) ;

__attribute__((used)) static inline uint16_t vrc4171_get_irq_status(void)
{
 return inw(INTERRUPT_STATUS);
}
