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
struct gsm_mux {struct gsm_mux* buf; struct gsm_mux* txframe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gsm_mux*) ; 

__attribute__((used)) static void FUNC1(struct gsm_mux *gsm)
{
	FUNC0(gsm->txframe);
	FUNC0(gsm->buf);
	FUNC0(gsm);
}