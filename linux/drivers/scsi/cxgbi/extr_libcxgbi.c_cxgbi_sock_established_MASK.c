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
struct cxgbi_sock {unsigned int write_seq; unsigned int snd_nxt; unsigned int snd_una; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct cxgbi_sock *csk, unsigned int snd_isn,
			unsigned int opt)
{
	csk->write_seq = csk->snd_nxt = csk->snd_una = snd_isn;
	FUNC1(csk->dst);
	FUNC2();
	FUNC0(csk, CTP_ESTABLISHED);
}