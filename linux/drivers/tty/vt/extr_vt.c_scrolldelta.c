
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int schedule_console_callback () ;
 int scrollback_delta ;

__attribute__((used)) static inline void scrolldelta(int lines)
{



 scrollback_delta += lines;
 schedule_console_callback();
}
