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
struct slim_stream_runtime {struct slim_stream_runtime* name; int /*<<< orphan*/  node; struct slim_device* dev; } ;
struct slim_device {int /*<<< orphan*/  stream_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slim_stream_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct slim_stream_runtime *stream)
{
	struct slim_device *sdev = stream->dev;

	FUNC2(&sdev->stream_list_lock);
	FUNC1(&stream->node);
	FUNC3(&sdev->stream_list_lock);

	FUNC0(stream->name);
	FUNC0(stream);

	return 0;
}