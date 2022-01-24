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
struct fw_blob {int /*<<< orphan*/  fw; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fw_blob* qla_fw_blobs ; 
 int /*<<< orphan*/  qla_fw_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct fw_blob *blob;

	FUNC0(&qla_fw_lock);
	for (blob = qla_fw_blobs; blob->name; blob++)
		FUNC2(blob->fw);
	FUNC1(&qla_fw_lock);
}