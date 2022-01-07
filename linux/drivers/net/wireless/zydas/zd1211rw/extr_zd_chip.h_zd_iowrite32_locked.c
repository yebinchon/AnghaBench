
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u32 ;
struct zd_ioreq32 {int value; int addr; } ;
struct zd_chip {int dummy; } ;


 int _zd_iowrite32v_locked (struct zd_chip*,struct zd_ioreq32*,int) ;

__attribute__((used)) static inline int zd_iowrite32_locked(struct zd_chip *chip, u32 value,
                               zd_addr_t addr)
{
 struct zd_ioreq32 ioreq;

 ioreq.addr = addr;
 ioreq.value = value;

 return _zd_iowrite32v_locked(chip, &ioreq, 1);
}
