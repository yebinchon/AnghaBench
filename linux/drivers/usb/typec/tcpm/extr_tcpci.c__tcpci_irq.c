
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci_chip {int tcpci; } ;
typedef int irqreturn_t ;


 int tcpci_irq (int ) ;

__attribute__((used)) static irqreturn_t _tcpci_irq(int irq, void *dev_id)
{
 struct tcpci_chip *chip = dev_id;

 return tcpci_irq(chip->tcpci);
}
