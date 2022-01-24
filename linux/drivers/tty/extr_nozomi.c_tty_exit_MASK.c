#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nozomi {TYPE_1__* port; scalar_t__ index_start; scalar_t__ open_ttys; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int MAX_PORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ntty_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct nozomi *dc)
{
	unsigned int i;

	FUNC0(" ");

	for (i = 0; i < MAX_PORT; ++i)
		FUNC3(&dc->port[i].port, false);

	/* Racy below - surely should wait for scheduled work to be done or
	   complete off a hangup method ? */
	while (dc->open_ttys)
		FUNC1(1);
	for (i = 0; i < MAX_PORT; ++i) {
		FUNC4(ntty_driver, dc->index_start + i);
		FUNC2(&dc->port[i].port);
	}
}