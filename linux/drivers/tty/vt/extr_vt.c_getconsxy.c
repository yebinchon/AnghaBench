
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_y; int vc_x; } ;


 unsigned char min (int ,int) ;

void getconsxy(struct vc_data *vc, unsigned char *p)
{

 p[0] = min(vc->vc_x, 0xFFu);
 p[1] = min(vc->vc_y, 0xFFu);
}
