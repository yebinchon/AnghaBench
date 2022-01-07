
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_size_row; } ;


 int fbcon_softback_size ;
 scalar_t__ softback_buf ;
 scalar_t__ softback_end ;
 scalar_t__ softback_top ;

__attribute__((used)) static void fbcon_update_softback(struct vc_data *vc)
{
 int l = fbcon_softback_size / vc->vc_size_row;

 if (l > 5)
  softback_end = softback_buf + l * vc->vc_size_row;
 else


  softback_top = 0;
}
