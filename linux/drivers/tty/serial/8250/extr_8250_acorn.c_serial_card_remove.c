
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_card_info {int num_ports; scalar_t__* ports; } ;
struct expansion_card {int dummy; } ;


 struct serial_card_info* ecard_get_drvdata (struct expansion_card*) ;
 int ecard_set_drvdata (struct expansion_card*,int *) ;
 int kfree (struct serial_card_info*) ;
 int serial8250_unregister_port (scalar_t__) ;

__attribute__((used)) static void serial_card_remove(struct expansion_card *ec)
{
 struct serial_card_info *info = ecard_get_drvdata(ec);
 int i;

 ecard_set_drvdata(ec, ((void*)0));

 for (i = 0; i < info->num_ports; i++)
  if (info->ports[i] > 0)
   serial8250_unregister_port(info->ports[i]);

 kfree(info);
}
