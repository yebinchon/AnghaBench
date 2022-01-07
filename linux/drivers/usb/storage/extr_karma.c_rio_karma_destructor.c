
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct karma_data {int recv; } ;


 int kfree (int ) ;

__attribute__((used)) static void rio_karma_destructor(void *extra)
{
 struct karma_data *data = (struct karma_data *) extra;

 kfree(data->recv);
}
