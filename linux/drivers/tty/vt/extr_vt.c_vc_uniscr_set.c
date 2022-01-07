
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {struct uni_screen* vc_uni_screen; } ;
struct uni_screen {int dummy; } ;


 int kfree (struct uni_screen*) ;

__attribute__((used)) static void vc_uniscr_set(struct vc_data *vc, struct uni_screen *new_uniscr)
{
 kfree(vc->vc_uni_screen);
 vc->vc_uni_screen = new_uniscr;
}
