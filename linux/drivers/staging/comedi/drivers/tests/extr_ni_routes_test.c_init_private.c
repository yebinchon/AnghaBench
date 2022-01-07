
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int dummy; } ;


 int memset (int *,int ,int) ;
 int private ;

__attribute__((used)) static void init_private(void)
{
 memset(&private, 0, sizeof(struct ni_private));
}
