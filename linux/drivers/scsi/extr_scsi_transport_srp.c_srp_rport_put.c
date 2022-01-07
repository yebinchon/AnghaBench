
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int dev; } ;


 int put_device (int *) ;

void srp_rport_put(struct srp_rport *rport)
{
 put_device(&rport->dev);
}
