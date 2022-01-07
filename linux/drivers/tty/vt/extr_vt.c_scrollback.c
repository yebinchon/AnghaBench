
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_rows; } ;


 int scrolldelta (int) ;

void scrollback(struct vc_data *vc)
{
 scrolldelta(-(vc->vc_rows / 2));
}
