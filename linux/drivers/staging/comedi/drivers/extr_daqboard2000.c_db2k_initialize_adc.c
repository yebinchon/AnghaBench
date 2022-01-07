
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int db2k_activate_reference_dacs (struct comedi_device*) ;
 int db2k_adc_disarm (struct comedi_device*) ;
 int db2k_initialize_ctrs (struct comedi_device*) ;
 int db2k_initialize_tmrs (struct comedi_device*) ;

__attribute__((used)) static void db2k_initialize_adc(struct comedi_device *dev)
{
 db2k_adc_disarm(dev);
 db2k_activate_reference_dacs(dev);
 db2k_initialize_ctrs(dev);
 db2k_initialize_tmrs(dev);
}
