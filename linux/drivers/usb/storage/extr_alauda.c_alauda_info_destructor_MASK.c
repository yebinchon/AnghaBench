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
struct alauda_media_info {int /*<<< orphan*/  pba_to_lba; int /*<<< orphan*/  lba_to_pba; } ;
struct alauda_info {struct alauda_media_info* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alauda_media_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *extra)
{
	struct alauda_info *info = (struct alauda_info *) extra;
	int port;

	if (!info)
		return;

	for (port = 0; port < 2; port++) {
		struct alauda_media_info *media_info = &info->port[port];

		FUNC0(media_info);
		FUNC1(media_info->lba_to_pba);
		FUNC1(media_info->pba_to_lba);
	}
}