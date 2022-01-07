
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_device {int dummy; } ;


 int C67X00_SIES ;
 int HPI_IRQ_ROUTING_REG ;
 int SIEMSG_REG (int) ;
 int c67x00_ll_hpi_status (struct c67x00_device*) ;
 int hpi_read_word (struct c67x00_device*,int ) ;
 int hpi_recv_mbox (struct c67x00_device*) ;
 int hpi_write_word (struct c67x00_device*,int ,int ) ;

void c67x00_ll_hpi_reg_init(struct c67x00_device *dev)
{
 int i;

 hpi_recv_mbox(dev);
 c67x00_ll_hpi_status(dev);
 hpi_write_word(dev, HPI_IRQ_ROUTING_REG, 0);

 for (i = 0; i < C67X00_SIES; i++) {
  hpi_write_word(dev, SIEMSG_REG(i), 0);
  hpi_read_word(dev, SIEMSG_REG(i));
 }
}
