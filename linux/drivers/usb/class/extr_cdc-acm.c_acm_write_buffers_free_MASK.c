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
struct acm_wb {int /*<<< orphan*/  dmah; int /*<<< orphan*/  buf; } ;
struct acm {int /*<<< orphan*/  writesize; int /*<<< orphan*/  dev; struct acm_wb* wb; } ;

/* Variables and functions */
 int ACM_NW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct acm *acm)
{
	int i;
	struct acm_wb *wb;

	for (wb = &acm->wb[0], i = 0; i < ACM_NW; i++, wb++)
		FUNC0(acm->dev, acm->writesize, wb->buf, wb->dmah);
}