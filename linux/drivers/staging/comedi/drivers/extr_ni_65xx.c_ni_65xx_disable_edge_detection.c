
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int ni_65xx_update_edge_detection (struct comedi_device*,int,int ,int ) ;

__attribute__((used)) static void ni_65xx_disable_edge_detection(struct comedi_device *dev)
{

 ni_65xx_update_edge_detection(dev, 0, 0, 0);

 ni_65xx_update_edge_detection(dev, 32, 0, 0);

 ni_65xx_update_edge_detection(dev, 64, 0, 0);
}
