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
struct us_data {int /*<<< orphan*/  pusb_intf; int /*<<< orphan*/  iobuf_dma; int /*<<< orphan*/  iobuf; int /*<<< orphan*/  pusb_dev; int /*<<< orphan*/  cr; } ;

/* Variables and functions */
 int /*<<< orphan*/  US_IOBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct us_data *us)
{
	/* Free the buffers */
	FUNC0(us->cr);
	FUNC1(us->pusb_dev, US_IOBUF_SIZE, us->iobuf, us->iobuf_dma);

	/* Remove our private data from the interface */
	FUNC2(us->pusb_intf, NULL);
}