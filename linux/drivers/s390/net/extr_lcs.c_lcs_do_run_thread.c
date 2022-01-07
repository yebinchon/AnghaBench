
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int wait_q; } ;


 int __lcs_do_run_thread (struct lcs_card*,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int
lcs_do_run_thread(struct lcs_card *card, unsigned long thread)
{
        int rc = 0;
        wait_event(card->wait_q,
                   (rc = __lcs_do_run_thread(card, thread)) >= 0);
        return rc;
}
