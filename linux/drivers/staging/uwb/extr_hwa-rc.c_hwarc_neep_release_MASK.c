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
struct uwb_rc {struct hwarc* priv; } ;
struct hwarc {int /*<<< orphan*/ * rd_buffer; int /*<<< orphan*/ * neep_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct uwb_rc *rc)
{
	struct hwarc *hwarc = rc->priv;

	FUNC2(hwarc->neep_urb);
	FUNC1(hwarc->neep_urb);
	hwarc->neep_urb = NULL;

	FUNC0((unsigned long)hwarc->rd_buffer);
	hwarc->rd_buffer = NULL;
}