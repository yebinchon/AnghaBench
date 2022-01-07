
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_word_t ;


 int BM (int *) ;
 int EVTCHN_FIFO_BIT (int ,int *) ;
 int MASKED ;
 int * event_word_from_port (unsigned int) ;
 int sync_test_and_set_bit (int ,int ) ;

__attribute__((used)) static bool evtchn_fifo_test_and_set_mask(unsigned port)
{
 event_word_t *word = event_word_from_port(port);
 return sync_test_and_set_bit(EVTCHN_FIFO_BIT(MASKED, word), BM(word));
}
