
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;


 unsigned int ni_get_valid_routes (int *,unsigned int,unsigned int*) ;

__attribute__((used)) static unsigned int _ni_get_valid_routes(struct comedi_device *dev,
      unsigned int n_pairs,
      unsigned int *pair_data)
{
 struct ni_private *devpriv = dev->private;

 return ni_get_valid_routes(&devpriv->routing_tables, n_pairs,
       pair_data);
}
