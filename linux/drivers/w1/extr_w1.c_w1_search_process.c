
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_master {int dummy; } ;


 int w1_search_process_cb (struct w1_master*,int ,int ) ;
 int w1_slave_found ;

__attribute__((used)) static void w1_search_process(struct w1_master *dev, u8 search_type)
{
 w1_search_process_cb(dev, search_type, w1_slave_found);
}
