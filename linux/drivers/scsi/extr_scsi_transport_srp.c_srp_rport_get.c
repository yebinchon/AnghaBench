
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int dev; } ;


 int get_device (int *) ;

void srp_rport_get(struct srp_rport *rport)
{
 get_device(&rport->dev);
}
