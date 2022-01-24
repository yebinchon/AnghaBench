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
typedef  int /*<<< orphan*/  va_list ;
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PRINTF_BUFFER_SIZE ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static void FUNC7(struct xenbus_device *dev, int err,
				const char *fmt, va_list ap)
{
	unsigned int len;
	char *printf_buffer;
	char *path_buffer;

#define PRINTF_BUFFER_SIZE 4096

	printf_buffer = FUNC3(PRINTF_BUFFER_SIZE, GFP_KERNEL);
	if (!printf_buffer)
		return;

	len = FUNC4(printf_buffer, "%i ", -err);
	FUNC5(printf_buffer + len, PRINTF_BUFFER_SIZE - len, fmt, ap);

	FUNC0(&dev->dev, "%s\n", printf_buffer);

	path_buffer = FUNC1(GFP_KERNEL, "error/%s", dev->nodename);
	if (path_buffer)
		FUNC6(XBT_NIL, path_buffer, "error", printf_buffer);

	FUNC2(printf_buffer);
	FUNC2(path_buffer);
}