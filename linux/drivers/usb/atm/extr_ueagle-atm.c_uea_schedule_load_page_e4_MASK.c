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
struct uea_softc {int /*<<< orphan*/  task; int /*<<< orphan*/  pageno; } ;
struct intr_pkt {int /*<<< orphan*/  e4_bSwapPageNo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct uea_softc *sc,
						struct intr_pkt *intr)
{
	sc->pageno = intr->e4_bSwapPageNo;
	FUNC0(&sc->task);
}