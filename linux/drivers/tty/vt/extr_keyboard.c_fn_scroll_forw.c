
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int scrollfront (struct vc_data*,int ) ;

__attribute__((used)) static void fn_scroll_forw(struct vc_data *vc)
{
 scrollfront(vc, 0);
}
