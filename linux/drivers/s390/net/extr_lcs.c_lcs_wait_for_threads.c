
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int wait_q; } ;


 scalar_t__ lcs_threads_running (struct lcs_card*,unsigned long) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
lcs_wait_for_threads(struct lcs_card *card, unsigned long threads)
{
        return wait_event_interruptible(card->wait_q,
                        lcs_threads_running(card, threads) == 0);
}
