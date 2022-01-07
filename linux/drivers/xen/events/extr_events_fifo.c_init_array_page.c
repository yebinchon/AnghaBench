
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_word_t ;


 unsigned int EVENT_WORDS_PER_PAGE ;
 int EVTCHN_FIFO_MASKED ;

__attribute__((used)) static void init_array_page(event_word_t *array_page)
{
 unsigned i;

 for (i = 0; i < EVENT_WORDS_PER_PAGE; i++)
  array_page[i] = 1 << EVTCHN_FIFO_MASKED;
}
