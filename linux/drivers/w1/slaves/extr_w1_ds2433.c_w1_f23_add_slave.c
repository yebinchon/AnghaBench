
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {struct w1_f23_data* family_data; } ;
struct w1_f23_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct w1_f23_data* kzalloc (int,int ) ;

__attribute__((used)) static int w1_f23_add_slave(struct w1_slave *sl)
{
 return 0;
}
