
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ speed_t ;
struct TYPE_3__ {scalar_t__ high; scalar_t__ rate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* cp210x_an205_table1 ;

__attribute__((used)) static speed_t cp210x_get_an205_rate(speed_t baud)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cp210x_an205_table1); ++i) {
  if (baud <= cp210x_an205_table1[i].high)
   break;
 }

 return cp210x_an205_table1[i].rate;
}
