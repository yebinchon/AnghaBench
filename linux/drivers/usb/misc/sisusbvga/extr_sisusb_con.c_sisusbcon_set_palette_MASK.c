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
struct vc_data {int* vc_palette; int /*<<< orphan*/  vc_num; } ;
struct sisusb_usb_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SISCOLDATA ; 
 int /*<<< orphan*/  SISCOLIDX ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vc_data*,struct sisusb_usb_data*) ; 
 scalar_t__ FUNC4 (struct sisusb_usb_data*,int /*<<< orphan*/ ,unsigned char const) ; 

__attribute__((used)) static void
FUNC5(struct vc_data *c, const unsigned char *table)
{
	struct sisusb_usb_data *sisusb;
	int i, j;

	/* Return value not used by vt */

	if (!FUNC0(c))
		return;

	sisusb = FUNC2(c->vc_num);
	if (!sisusb)
		return;

	/* sisusb->lock is down */

	if (FUNC3(c, sisusb)) {
		FUNC1(&sisusb->lock);
		return;
	}

	for (i = j = 0; i < 16; i++) {
		if (FUNC4(sisusb, SISCOLIDX, table[i]))
			break;
		if (FUNC4(sisusb, SISCOLDATA, c->vc_palette[j++] >> 2))
			break;
		if (FUNC4(sisusb, SISCOLDATA, c->vc_palette[j++] >> 2))
			break;
		if (FUNC4(sisusb, SISCOLDATA, c->vc_palette[j++] >> 2))
			break;
	}

	FUNC1(&sisusb->lock);
}