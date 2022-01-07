
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESCAPE_CODE ;
 int TRACE_BEGIN_CODE ;
 int add_event_entry (int ) ;

__attribute__((used)) static void add_trace_begin(void)
{
 add_event_entry(ESCAPE_CODE);
 add_event_entry(TRACE_BEGIN_CODE);
}
