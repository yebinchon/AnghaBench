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
struct smbd_connection {int /*<<< orphan*/  request_cache; int /*<<< orphan*/  request_mempool; int /*<<< orphan*/  response_cache; int /*<<< orphan*/  response_mempool; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct smbd_connection *info)
{
	FUNC0(info);
	FUNC1(info->workqueue);
	FUNC3(info->response_mempool);
	FUNC2(info->response_cache);
	FUNC3(info->request_mempool);
	FUNC2(info->request_cache);
}