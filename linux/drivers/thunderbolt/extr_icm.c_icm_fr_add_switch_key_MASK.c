#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tb_switch {int /*<<< orphan*/  key; int /*<<< orphan*/  connection_key; int /*<<< orphan*/  connection_id; int /*<<< orphan*/  uuid; } ;
struct tb {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  code; } ;
struct icm_fr_pkg_add_device_key_response {TYPE_1__ hdr; int /*<<< orphan*/ * key; int /*<<< orphan*/  connection_key; int /*<<< orphan*/  connection_id; int /*<<< orphan*/  ep_uuid; } ;
struct icm_fr_pkg_add_device_key {TYPE_1__ hdr; int /*<<< orphan*/ * key; int /*<<< orphan*/  connection_key; int /*<<< orphan*/  connection_id; int /*<<< orphan*/  ep_uuid; } ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ICM_ADD_DEVICE_KEY ; 
 int ICM_FLAGS_ERROR ; 
 int /*<<< orphan*/  ICM_TIMEOUT ; 
 int TB_SWITCH_KEY_SIZE ; 
 int FUNC0 (struct tb*,struct icm_fr_pkg_add_device_key_response*,int,struct icm_fr_pkg_add_device_key_response*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct icm_fr_pkg_add_device_key_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tb*,char*) ; 

__attribute__((used)) static int FUNC4(struct tb *tb, struct tb_switch *sw)
{
	struct icm_fr_pkg_add_device_key request;
	struct icm_fr_pkg_add_device_key_response reply;
	int ret;

	FUNC2(&request, 0, sizeof(request));
	FUNC1(&request.ep_uuid, sw->uuid, sizeof(request.ep_uuid));
	request.hdr.code = ICM_ADD_DEVICE_KEY;
	request.connection_id = sw->connection_id;
	request.connection_key = sw->connection_key;
	FUNC1(request.key, sw->key, TB_SWITCH_KEY_SIZE);

	FUNC2(&reply, 0, sizeof(reply));
	ret = FUNC0(tb, &request, sizeof(request), &reply, sizeof(reply),
			  1, ICM_TIMEOUT);
	if (ret)
		return ret;

	if (reply.hdr.flags & ICM_FLAGS_ERROR) {
		FUNC3(tb, "Adding key to switch failed\n");
		return -EIO;
	}

	return 0;
}