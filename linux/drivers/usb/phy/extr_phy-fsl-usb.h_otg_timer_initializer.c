
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_otg_timer {void (* function ) (unsigned long) ;unsigned long expires; unsigned long data; } ;


 int GFP_KERNEL ;
 struct fsl_otg_timer* kmalloc (int,int ) ;

inline struct fsl_otg_timer *otg_timer_initializer
(void (*function)(unsigned long), unsigned long expires, unsigned long data)
{
 struct fsl_otg_timer *timer;

 timer = kmalloc(sizeof(struct fsl_otg_timer), GFP_KERNEL);
 if (!timer)
  return ((void*)0);
 timer->function = function;
 timer->expires = expires;
 timer->data = data;
 return timer;
}
