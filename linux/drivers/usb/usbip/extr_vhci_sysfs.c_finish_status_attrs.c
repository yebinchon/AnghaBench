
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int ) ;
 int status_attrs ;

__attribute__((used)) static void finish_status_attrs(void)
{
 kfree(status_attrs);
}
