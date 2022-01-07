
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int request_module (char*) ;

__attribute__((used)) static void get_lowlevel_driver(void)
{




 request_module("parport_lowlevel");
}
