
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_rows; } ;


 int scrolldelta (int) ;

void scrollfront(struct vc_data *vc, int lines)
{
 if (!lines)
  lines = vc->vc_rows / 2;
 scrolldelta(lines);
}
