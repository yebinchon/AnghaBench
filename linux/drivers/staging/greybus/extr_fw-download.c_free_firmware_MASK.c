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
struct fw_request {int disabled; int /*<<< orphan*/  node; } ;
struct fw_download {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_request*) ; 

__attribute__((used)) static void FUNC4(struct fw_download *fw_download,
			  struct fw_request *fw_req)
{
	/* Already disabled from timeout handlers */
	if (fw_req->disabled)
		return;

	FUNC1(&fw_download->mutex);
	FUNC0(&fw_req->node);
	FUNC2(&fw_download->mutex);

	fw_req->disabled = true;
	FUNC3(fw_req);
}