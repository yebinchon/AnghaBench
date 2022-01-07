
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int REV_RT3593E ;
 int RT3593 ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_init_bbp_early (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt_rev_gte (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2800_init_bbp_3593(struct rt2x00_dev *rt2x00dev)
{
 rt2800_init_bbp_early(rt2x00dev);

 rt2800_bbp_write(rt2x00dev, 79, 0x13);
 rt2800_bbp_write(rt2x00dev, 80, 0x05);
 rt2800_bbp_write(rt2x00dev, 81, 0x33);
 rt2800_bbp_write(rt2x00dev, 137, 0x0f);

 rt2800_bbp_write(rt2x00dev, 84, 0x19);


 if (rt2x00_rt_rev_gte(rt2x00dev, RT3593, REV_RT3593E))
  rt2800_bbp_write(rt2x00dev, 103, 0xc0);
}
