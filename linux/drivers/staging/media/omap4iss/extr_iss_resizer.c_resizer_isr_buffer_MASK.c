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
struct iss_resizer_device {int /*<<< orphan*/  video_out; } ;
struct iss_buffer {int /*<<< orphan*/  iss_addr; } ;

/* Variables and functions */
 struct iss_buffer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_resizer_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iss_resizer_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iss_resizer_device *resizer)
{
	struct iss_buffer *buffer;

	/* The whole resizer needs to be stopped. Disabling RZA only produces
	 * input FIFO overflows, most probably when the next frame is received.
	 */
	FUNC1(resizer, 0);

	buffer = FUNC0(&resizer->video_out);
	if (!buffer)
		return;

	FUNC2(resizer, buffer->iss_addr);

	FUNC1(resizer, 1);
}