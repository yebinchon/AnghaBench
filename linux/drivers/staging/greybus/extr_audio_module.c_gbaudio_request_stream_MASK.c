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
struct gbaudio_module_info {int /*<<< orphan*/  dev; } ;
struct gb_audio_streaming_event_request {int /*<<< orphan*/  event; int /*<<< orphan*/  data_cport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gbaudio_module_info *module,
				  struct gb_audio_streaming_event_request *req)
{
	FUNC0(module->dev, "Audio Event received: cport: %u, event: %u\n",
		 FUNC1(req->data_cport), req->event);

	return 0;
}