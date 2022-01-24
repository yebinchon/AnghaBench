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
typedef  int u32 ;
struct aac_dev {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  void* __le32 ;
struct TYPE_4__ {int /*<<< orphan*/ * IMRx; int /*<<< orphan*/ * OMRx; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_POST_RESULTS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KERNEL_PANIC ; 
 int KERNEL_UP_AND_RUNNING ; 
 TYPE_2__ MUnit ; 
 int SELF_TEST_FAILED ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,...) ; 
 int FUNC3 (char) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct aac_dev *dev)
{
	u32 status = FUNC6(dev, MUnit.OMRx[0]);

	/*
	 *	Check to see if the board failed any self tests.
	 */
	if (FUNC9(status & SELF_TEST_FAILED))
		return -1;
	/*
	 *	Check to see if the board panic'd.
	 */
	if (FUNC9(status & KERNEL_PANIC)) {
		char * buffer;
		struct POSTSTATUS {
			__le32 Post_Command;
			__le32 Post_Address;
		} * post;
		dma_addr_t paddr, baddr;
		int ret;

		if (FUNC4((status & 0xFF000000L) == 0xBC000000L))
			return (status >> 16) & 0xFF;
		buffer = FUNC1(&dev->pdev->dev, 512, &baddr,
					    GFP_KERNEL);
		ret = -2;
		if (FUNC9(buffer == NULL))
			return ret;
		post = FUNC1(&dev->pdev->dev,
					  sizeof(struct POSTSTATUS), &paddr,
					  GFP_KERNEL);
		if (FUNC9(post == NULL)) {
			FUNC2(&dev->pdev->dev, 512, buffer, baddr);
			return ret;
		}
		FUNC5(buffer, 0, 512);
		post->Post_Command = FUNC0(COMMAND_POST_RESULTS);
		post->Post_Address = FUNC0(baddr);
		FUNC8(dev, MUnit.IMRx[0], paddr);
		FUNC7(dev, COMMAND_POST_RESULTS, baddr, 0, 0, 0, 0, 0,
		  NULL, NULL, NULL, NULL, NULL);
		FUNC2(&dev->pdev->dev, sizeof(struct POSTSTATUS),
				  post, paddr);
		if (FUNC4((buffer[0] == '0') && ((buffer[1] == 'x') || (buffer[1] == 'X')))) {
			ret = (FUNC3(buffer[2]) << 4) +
				FUNC3(buffer[3]);
		}
		FUNC2(&dev->pdev->dev, 512, buffer, baddr);
		return ret;
	}
	/*
	 *	Wait for the adapter to be up and running.
	 */
	if (FUNC9(!(status & KERNEL_UP_AND_RUNNING)))
		return -3;
	/*
	 *	Everything is OK
	 */
	return 0;
}