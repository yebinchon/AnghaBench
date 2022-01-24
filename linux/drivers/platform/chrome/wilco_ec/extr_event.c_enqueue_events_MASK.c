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
typedef  size_t u32 ;
struct event_device_data {int /*<<< orphan*/  wq; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  events; } ;
struct ec_event {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  dev; struct event_device_data* driver_data; } ;

/* Variables and functions */
 size_t EC_ACPI_MAX_EVENT_WORDS ; 
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 size_t FUNC1 (struct ec_event*) ; 
 size_t FUNC2 (struct ec_event*) ; 
 struct ec_event* FUNC3 (int /*<<< orphan*/ ,struct ec_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct ec_event*) ; 
 struct ec_event* FUNC5 (struct ec_event*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct acpi_device *adev, const u8 *buf, u32 length)
{
	struct event_device_data *dev_data = adev->driver_data;
	struct ec_event *event, *queue_event, *old_event;
	size_t num_words, event_size;
	u32 offset = 0;

	while (offset < length) {
		event = (struct ec_event *)(buf + offset);

		num_words = FUNC1(event);
		event_size = FUNC2(event);
		if (num_words > EC_ACPI_MAX_EVENT_WORDS) {
			FUNC0(&adev->dev, "Too many event words: %zu > %d\n",
				num_words, EC_ACPI_MAX_EVENT_WORDS);
			return -EOVERFLOW;
		}

		/* Ensure event does not overflow the available buffer */
		if ((offset + event_size) > length) {
			FUNC0(&adev->dev, "Event exceeds buffer: %zu > %d\n",
				offset + event_size, length);
			return -EOVERFLOW;
		}

		/* Point to the next event in the buffer */
		offset += event_size;

		/* Copy event into the queue */
		queue_event = FUNC5(event, event_size, GFP_KERNEL);
		if (!queue_event)
			return -ENOMEM;
		FUNC6(&dev_data->queue_lock);
		old_event = FUNC3(dev_data->events, queue_event);
		FUNC7(&dev_data->queue_lock);
		FUNC4(old_event);
		FUNC8(&dev_data->wq);
	}

	return 0;
}