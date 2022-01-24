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
struct iss_csi2_device {int /*<<< orphan*/  video_out; } ;
struct iss_buffer {int /*<<< orphan*/  iss_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iss_csi2_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_csi2_device*,int /*<<< orphan*/ ) ; 
 struct iss_buffer* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iss_csi2_device *csi2)
{
	struct iss_buffer *buffer;

	FUNC0(csi2, 0, 0);

	buffer = FUNC2(&csi2->video_out);

	/*
	 * Let video queue operation restart engine if there is an underrun
	 * condition.
	 */
	if (!buffer)
		return;

	FUNC1(csi2, buffer->iss_addr);
	FUNC0(csi2, 0, 1);
}