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
typedef  int /*<<< orphan*/  va_list ;
struct device {TYPE_2__* bus; TYPE_1__* driver; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESAS2R_DRVR_NAME ; 
 size_t EVENT_LOG_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device const*) ; 
 char* event_buffer ; 
 int /*<<< orphan*/  event_buffer_lock ; 
 long const event_log_level ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char const*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (long const) ; 
 int FUNC8 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const long level,
			     const struct device *dev,
			     const char *format,
			     va_list args)
{
	if (level <= event_log_level) {
		unsigned long flags = 0;
		int retval = 0;
		char *buffer = event_buffer;
		size_t buflen = EVENT_LOG_BUFF_SIZE;
		const char *fmt_nodev = "%s%s: ";
		const char *fmt_dev = "%s%s [%s, %s, %s]";
		const char *slevel =
			FUNC7(level);

		FUNC4(&event_buffer_lock, flags);

		FUNC1(buffer, 0, buflen);

		/*
		 * format the level onto the beginning of the string and do
		 * some pointer arithmetic to move the pointer to the point
		 * where the actual message can be inserted.
		 */

		if (dev == NULL) {
			FUNC3(buffer, buflen, fmt_nodev, slevel,
				 ESAS2R_DRVR_NAME);
		} else {
			FUNC3(buffer, buflen, fmt_dev, slevel,
				 ESAS2R_DRVR_NAME,
				 (dev->driver ? dev->driver->name : "unknown"),
				 (dev->bus ? dev->bus->name : "unknown"),
				 FUNC0(dev));
		}

		buffer += FUNC6(event_buffer);
		buflen -= FUNC6(event_buffer);

		retval = FUNC8(buffer, buflen, format, args);
		if (retval < 0) {
			FUNC5(&event_buffer_lock, flags);
			return -1;
		}

		/*
		 * Put a line break at the end of the formatted string so that
		 * we don't wind up with run-on messages.
		 */
		FUNC2("%s\n", event_buffer);

		FUNC5(&event_buffer_lock, flags);
	}

	return 0;
}