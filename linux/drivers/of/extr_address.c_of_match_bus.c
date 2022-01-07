
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_bus {scalar_t__ (* match ) (struct device_node*) ;} ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (struct of_bus*) ;
 int BUG () ;
 struct of_bus* of_busses ;
 scalar_t__ stub1 (struct device_node*) ;

__attribute__((used)) static struct of_bus *of_match_bus(struct device_node *np)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(of_busses); i++)
  if (!of_busses[i].match || of_busses[i].match(np))
   return &of_busses[i];
 BUG();
 return ((void*)0);
}
