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
struct smbd_response {int dummy; } ;
struct smbd_request {int dummy; } ;
struct smbd_data_transfer {int dummy; } ;
struct smbd_connection {int max_receive_size; void* request_cache; void* request_mempool; void* response_cache; void* response_mempool; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  receive_credit_max; int /*<<< orphan*/  send_credit_target; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ERR ; 
 int MAX_NAME_LEN ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int FUNC0 (struct smbd_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mempool_alloc_slab ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  mempool_free_slab ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,struct smbd_connection*) ; 

__attribute__((used)) static int FUNC9(struct smbd_connection *info)
{
	char name[MAX_NAME_LEN];
	int rc;

	FUNC8(name, MAX_NAME_LEN, "smbd_request_%p", info);
	info->request_cache =
		FUNC3(
			name,
			sizeof(struct smbd_request) +
				sizeof(struct smbd_data_transfer),
			0, SLAB_HWCACHE_ALIGN, NULL);
	if (!info->request_cache)
		return -ENOMEM;

	info->request_mempool =
		FUNC6(info->send_credit_target, mempool_alloc_slab,
			mempool_free_slab, info->request_cache);
	if (!info->request_mempool)
		goto out1;

	FUNC8(name, MAX_NAME_LEN, "smbd_response_%p", info);
	info->response_cache =
		FUNC3(
			name,
			sizeof(struct smbd_response) +
				info->max_receive_size,
			0, SLAB_HWCACHE_ALIGN, NULL);
	if (!info->response_cache)
		goto out2;

	info->response_mempool =
		FUNC6(info->receive_credit_max, mempool_alloc_slab,
		       mempool_free_slab, info->response_cache);
	if (!info->response_mempool)
		goto out3;

	FUNC8(name, MAX_NAME_LEN, "smbd_%p", info);
	info->workqueue = FUNC1(name);
	if (!info->workqueue)
		goto out4;

	rc = FUNC0(info, info->receive_credit_max);
	if (rc) {
		FUNC5(ERR, "failed to allocate receive buffers\n");
		goto out5;
	}

	return 0;

out5:
	FUNC2(info->workqueue);
out4:
	FUNC7(info->response_mempool);
out3:
	FUNC4(info->response_cache);
out2:
	FUNC7(info->request_mempool);
out1:
	FUNC4(info->request_cache);
	return -ENOMEM;
}