#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imgu_device {int dummy; } ;
struct imgu_css {int /*<<< orphan*/ * fw; int /*<<< orphan*/ * binary; TYPE_2__* fwp; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int binary_nr; } ;
struct TYPE_4__ {TYPE_1__ file_header; } ;

/* Variables and functions */
 struct imgu_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imgu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct imgu_css *css)
{
	struct imgu_device *imgu = FUNC0(css->dev);

	if (css->binary) {
		unsigned int i;

		for (i = 0; i < css->fwp->file_header.binary_nr; i++)
			FUNC1(imgu, &css->binary[i]);
		FUNC2(css->binary);
	}
	if (css->fw)
		FUNC3(css->fw);

	css->binary = NULL;
	css->fw = NULL;
}