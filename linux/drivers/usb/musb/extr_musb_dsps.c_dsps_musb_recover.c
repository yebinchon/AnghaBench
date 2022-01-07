
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {struct device* controller; } ;
struct dsps_glue {scalar_t__ sw_babble_enabled; } ;
struct device {int parent; } ;


 int EPIPE ;
 struct dsps_glue* dev_get_drvdata (int ) ;
 int dsps_sw_babble_control (struct musb*) ;

__attribute__((used)) static int dsps_musb_recover(struct musb *musb)
{
 struct device *dev = musb->controller;
 struct dsps_glue *glue = dev_get_drvdata(dev->parent);
 int session_restart = 0;

 if (glue->sw_babble_enabled)
  session_restart = dsps_sw_babble_control(musb);
 else
  session_restart = 1;

 return session_restart ? 0 : -EPIPE;
}
