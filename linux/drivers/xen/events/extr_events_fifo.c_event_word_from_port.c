
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_word_t ;


 unsigned int EVENT_WORDS_PER_PAGE ;
 int ** event_array ;

__attribute__((used)) static inline event_word_t *event_word_from_port(unsigned port)
{
 unsigned i = port / EVENT_WORDS_PER_PAGE;

 return event_array[i] + port % EVENT_WORDS_PER_PAGE;
}
