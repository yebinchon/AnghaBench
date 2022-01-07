
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int lock; } ;
struct c67x00_device {TYPE_1__ hpi; } ;
typedef int __le16 ;


 int HPI_ADDR ;
 int HPI_DATA ;
 int hpi_write_reg (struct c67x00_device*,int ,int) ;
 int le16_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hpi_write_words_le16(struct c67x00_device *dev, u16 addr,
     __le16 *data, u16 count)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&dev->hpi.lock, flags);

 hpi_write_reg(dev, HPI_ADDR, addr);
 for (i = 0; i < count; i++)
  hpi_write_reg(dev, HPI_DATA, le16_to_cpu(*data++));

 spin_unlock_irqrestore(&dev->hpi.lock, flags);
}
