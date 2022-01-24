#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tty_struct {int dummy; } ;
struct n_hdlc_buf {int dummy; } ;
struct n_hdlc {int /*<<< orphan*/  tx_free_buf_list; int /*<<< orphan*/  tx_buf_list; } ;

/* Variables and functions */
 struct n_hdlc_buf* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct n_hdlc_buf*) ; 
 struct n_hdlc* FUNC2 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct n_hdlc *n_hdlc = FUNC2(tty);
	struct n_hdlc_buf *buf;

	while ((buf = FUNC0(&n_hdlc->tx_buf_list)))
		FUNC1(&n_hdlc->tx_free_buf_list, buf);
}