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
struct initio_host {TYPE_1__* active; } ;
struct TYPE_2__ {int next_state; } ;

/* Variables and functions */
 int FUNC0 (struct initio_host*) ; 
 int FUNC1 (struct initio_host*) ; 
 int FUNC2 (struct initio_host*) ; 
 int FUNC3 (struct initio_host*) ; 
 int FUNC4 (struct initio_host*) ; 
 int FUNC5 (struct initio_host*) ; 
 int FUNC6 (struct initio_host*) ; 
 int FUNC7 (struct initio_host*) ; 
 int FUNC8 (struct initio_host*) ; 

__attribute__((used)) static int FUNC9(struct initio_host * host)
{
	int next;

	next = host->active->next_state;
	for (;;) {
		switch (next) {
		case 1:
			next = FUNC2(host);
			break;
		case 2:
			next = FUNC3(host);
			break;
		case 3:
			next = FUNC4(host);
			break;
		case 4:
			next = FUNC5(host);
			break;
		case 5:
			next = FUNC6(host);
			break;
		case 6:
			next = FUNC7(host);
			break;
		case 7:
			next = FUNC8(host);
			break;
		case 8:
			return FUNC1(host);
		default:
			return FUNC0(host);
		}
		if (next <= 0)
			return next;
	}
}