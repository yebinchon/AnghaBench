#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gb_connection {TYPE_1__* intf; } ;
struct gb_camera_debugfs_entry {int /*<<< orphan*/  mask; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  root; TYPE_4__* buffers; } ;
struct gb_camera {TYPE_3__ debugfs; TYPE_2__* bundle; struct gb_connection* connection; } ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int interface_id; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct gb_camera_debugfs_entry*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GB_CAMERA_DEBUGFS_BUFFER_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_camera*,int /*<<< orphan*/ *) ; 
 struct gb_camera_debugfs_entry* gb_camera_debugfs_entries ; 
 int /*<<< orphan*/  gb_camera_debugfs_ops ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,int) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gb_camera *gcam)
{
	struct gb_connection *connection = gcam->connection;
	char dirname[27];
	unsigned int i;

	/*
	 * Create root debugfs entry and a file entry for each camera operation.
	 */
	FUNC5(dirname, 27, "camera-%u.%u", connection->intf->interface_id,
		 gcam->bundle->id);

	gcam->debugfs.root = FUNC2(dirname, FUNC4());

	gcam->debugfs.buffers =
		FUNC6(FUNC1(GB_CAMERA_DEBUGFS_BUFFER_MAX,
				   sizeof(*gcam->debugfs.buffers)));
	if (!gcam->debugfs.buffers)
		return -ENOMEM;

	for (i = 0; i < FUNC0(gb_camera_debugfs_entries); ++i) {
		const struct gb_camera_debugfs_entry *entry =
			&gb_camera_debugfs_entries[i];

		gcam->debugfs.buffers[i].length = 0;

		FUNC3(entry->name, entry->mask,
				    gcam->debugfs.root, gcam,
				    &gb_camera_debugfs_ops);
	}

	return 0;
}