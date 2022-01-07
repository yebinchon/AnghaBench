
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct c67x00_device {int dummy; } ;


 int HPI_ADDR ;
 int HPI_DATA ;
 int hpi_write_reg (struct c67x00_device*,int ,int ) ;

__attribute__((used)) static void hpi_write_word_nolock(struct c67x00_device *dev, u16 reg, u16 value)
{
 hpi_write_reg(dev, HPI_ADDR, reg);
 hpi_write_reg(dev, HPI_DATA, value);
}
