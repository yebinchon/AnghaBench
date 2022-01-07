
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eurwdt_set_timeout (int ) ;

__attribute__((used)) static inline void eurwdt_disable_timer(void)
{
 eurwdt_set_timeout(0);
}
