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
struct dwc3_event_buffer {unsigned int length; int /*<<< orphan*/  buf; int /*<<< orphan*/  dma; void* cache; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  sysdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dwc3_event_buffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dwc3_event_buffer *FUNC3(struct dwc3 *dwc,
		unsigned length)
{
	struct dwc3_event_buffer	*evt;

	evt = FUNC1(dwc->dev, sizeof(*evt), GFP_KERNEL);
	if (!evt)
		return FUNC0(-ENOMEM);

	evt->dwc	= dwc;
	evt->length	= length;
	evt->cache	= FUNC1(dwc->dev, length, GFP_KERNEL);
	if (!evt->cache)
		return FUNC0(-ENOMEM);

	evt->buf	= FUNC2(dwc->sysdev, length,
			&evt->dma, GFP_KERNEL);
	if (!evt->buf)
		return FUNC0(-ENOMEM);

	return evt;
}