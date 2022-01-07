
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,char const*) ;
 int pr_cont (char*,...) ;

__attribute__((used)) static void debug_packet(struct device *dev, const char *name, u8 *ptr,
    int len)
{
}
