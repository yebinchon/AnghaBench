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
struct sdw_stream_runtime {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sdw_stream_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sdw_stream_runtime*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdw_stream_runtime*) ; 

int FUNC4(struct sdw_stream_runtime *stream)
{
	int ret;

	if (!stream) {
		FUNC1("SoundWire: Handle not found for stream\n");
		return -EINVAL;
	}

	FUNC2(stream);
	ret = FUNC0(stream);
	if (ret < 0)
		FUNC1("De-prepare for stream:%d failed: %d\n", ret, ret);

	FUNC3(stream);
	return ret;
}