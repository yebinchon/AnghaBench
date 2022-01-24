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
typedef  int /*<<< orphan*/  u8 ;
struct ds2482_w1_chan {int /*<<< orphan*/  channel; struct ds2482_data* pdev; } ;
struct ds2482_data {int w1_count; int /*<<< orphan*/  access_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2482_CMD_1WIRE_WRITE_BYTE ; 
 int /*<<< orphan*/  FUNC0 (struct ds2482_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ds2482_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ds2482_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *data, u8 byte)
{
	struct ds2482_w1_chan *pchan = data;
	struct ds2482_data    *pdev = pchan->pdev;

	FUNC3(&pdev->access_lock);

	/* Select the channel */
	FUNC2(pdev);
	if (pdev->w1_count > 1)
		FUNC1(pdev, pchan->channel);

	/* Send the write byte command */
	FUNC0(pdev, DS2482_CMD_1WIRE_WRITE_BYTE, byte);

	FUNC4(&pdev->access_lock);
}