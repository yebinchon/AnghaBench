
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int fbcon_scrolldelta (struct vc_data*,scalar_t__) ;
 scalar_t__ softback_lines ;

__attribute__((used)) static int fbcon_set_origin(struct vc_data *vc)
{
 if (softback_lines)
  fbcon_scrolldelta(vc, softback_lines);
 return 0;
}
