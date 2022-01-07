
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pr_info (char*) ;

__attribute__((used)) static void release_most_sub(struct device *dev)
{
 pr_info("releasing most_subsystem\n");
}
