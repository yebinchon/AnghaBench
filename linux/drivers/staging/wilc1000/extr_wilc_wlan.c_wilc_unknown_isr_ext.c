
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc {TYPE_1__* hif_func; } ;
struct TYPE_2__ {int (* hif_clear_int_ext ) (struct wilc*,int ) ;} ;


 int stub1 (struct wilc*,int ) ;

__attribute__((used)) static void wilc_unknown_isr_ext(struct wilc *wilc)
{
 wilc->hif_func->hif_clear_int_ext(wilc, 0);
}
