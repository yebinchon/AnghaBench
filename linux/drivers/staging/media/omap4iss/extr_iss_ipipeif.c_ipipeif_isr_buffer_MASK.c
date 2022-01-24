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
struct TYPE_2__ {int /*<<< orphan*/  dmaqueue; } ;
struct iss_ipipeif_device {TYPE_1__ video_out; } ;
struct iss_buffer {int /*<<< orphan*/  iss_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iss_ipipeif_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_ipipeif_device*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct iss_buffer* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct iss_ipipeif_device *ipipeif)
{
	struct iss_buffer *buffer;

	/* The ISIF generates VD0 interrupts even when writes are disabled.
	 * deal with it anyway). Disabling the ISIF when no buffer is available
	 * is thus not be enough, we need to handle the situation explicitly.
	 */
	if (FUNC2(&ipipeif->video_out.dmaqueue))
		return;

	FUNC1(ipipeif, 0);

	buffer = FUNC3(&ipipeif->video_out);
	if (!buffer)
		return;

	FUNC0(ipipeif, buffer->iss_addr);

	FUNC1(ipipeif, 1);
}