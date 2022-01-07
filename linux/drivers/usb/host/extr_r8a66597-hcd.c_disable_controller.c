
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8a66597 {int max_root_hub; } ;


 int BEMPENB ;
 int BEMPSTS ;
 int BRDYENB ;
 int BRDYSTS ;
 int INTENB0 ;
 int INTENB1 ;
 int NRDYENB ;
 int NRDYSTS ;
 int r8a66597_clock_disable (struct r8a66597*) ;
 int r8a66597_disable_port (struct r8a66597*,int) ;
 int r8a66597_write (struct r8a66597*,int ,int ) ;

__attribute__((used)) static void disable_controller(struct r8a66597 *r8a66597)
{
 int port;


 r8a66597_write(r8a66597, 0, INTENB0);
 r8a66597_write(r8a66597, 0, INTENB1);
 r8a66597_write(r8a66597, 0, BRDYENB);
 r8a66597_write(r8a66597, 0, BEMPENB);
 r8a66597_write(r8a66597, 0, NRDYENB);


 r8a66597_write(r8a66597, 0, BRDYSTS);
 r8a66597_write(r8a66597, 0, NRDYSTS);
 r8a66597_write(r8a66597, 0, BEMPSTS);

 for (port = 0; port < r8a66597->max_root_hub; port++)
  r8a66597_disable_port(r8a66597, port);

 r8a66597_clock_disable(r8a66597);
}
