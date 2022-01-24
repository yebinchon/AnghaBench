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
struct rt2x00debug_intf {int /*<<< orphan*/  driver_folder; TYPE_2__* rt2x00dev; } ;
struct debugfs_blob_wrapper {char* data; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 char* DRV_VERSION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_LINE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ ,struct debugfs_blob_wrapper*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(const char *name,
					   struct rt2x00debug_intf *intf,
					   struct debugfs_blob_wrapper *blob)
{
	char *data;

	data = FUNC1(3 * MAX_LINE_LENGTH, GFP_KERNEL);
	if (!data)
		return;

	blob->data = data;
	data += FUNC2(data, "driver:\t%s\n", intf->rt2x00dev->ops->name);
	data += FUNC2(data, "version:\t%s\n", DRV_VERSION);
	blob->size = FUNC3(blob->data);

	FUNC0(name, 0400, intf->driver_folder, blob);
}