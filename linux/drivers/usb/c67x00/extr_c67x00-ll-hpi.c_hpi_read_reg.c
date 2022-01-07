
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int regstep; scalar_t__ base; } ;
struct c67x00_device {TYPE_1__ hpi; } ;


 int HPI_T_CYC_NS ;
 int __raw_readw (scalar_t__) ;
 int ndelay (int ) ;

__attribute__((used)) static inline u16 hpi_read_reg(struct c67x00_device *dev, int reg)
{
 ndelay(HPI_T_CYC_NS);
 return __raw_readw(dev->hpi.base + reg * dev->hpi.regstep);
}
