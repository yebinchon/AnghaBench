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
struct slim_stream_runtime {int num_ports; int /*<<< orphan*/ * ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct slim_stream_runtime*,int /*<<< orphan*/ *) ; 

int FUNC2(struct slim_stream_runtime *stream)
{
	int i;

	for (i = 0; i < stream->num_ports; i++)
		FUNC1(stream, &stream->ports[i]);

	FUNC0(stream->ports);
	stream->ports = NULL;
	stream->num_ports = 0;

	return 0;
}