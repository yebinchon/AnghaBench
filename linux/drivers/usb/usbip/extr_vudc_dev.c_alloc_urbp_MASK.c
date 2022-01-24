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
struct urbp {int /*<<< orphan*/  urb_entry; int /*<<< orphan*/ * ep; int /*<<< orphan*/ * urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct urbp* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct urbp *FUNC2(void)
{
	struct urbp *urb_p;

	urb_p = FUNC1(sizeof(*urb_p), GFP_KERNEL);
	if (!urb_p)
		return urb_p;

	urb_p->urb = NULL;
	urb_p->ep = NULL;
	FUNC0(&urb_p->urb_entry);
	return urb_p;
}