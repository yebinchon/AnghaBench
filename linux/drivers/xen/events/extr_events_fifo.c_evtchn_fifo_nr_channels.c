
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENT_WORDS_PER_PAGE ;
 int event_array_pages ;

__attribute__((used)) static unsigned evtchn_fifo_nr_channels(void)
{
 return event_array_pages * EVENT_WORDS_PER_PAGE;
}
