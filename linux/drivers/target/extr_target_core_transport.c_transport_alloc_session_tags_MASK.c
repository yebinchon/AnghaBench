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
struct se_session {int /*<<< orphan*/ * sess_cmd_map; int /*<<< orphan*/  sess_tag_pool; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int __GFP_RETRY_MAYFAIL ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,int,int,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct se_session *se_sess,
			         unsigned int tag_num, unsigned int tag_size)
{
	int rc;

	se_sess->sess_cmd_map = FUNC0(tag_size, tag_num,
					 GFP_KERNEL | __GFP_RETRY_MAYFAIL);
	if (!se_sess->sess_cmd_map) {
		FUNC2("Unable to allocate se_sess->sess_cmd_map\n");
		return -ENOMEM;
	}

	rc = FUNC3(&se_sess->sess_tag_pool, tag_num, -1,
			false, GFP_KERNEL, NUMA_NO_NODE);
	if (rc < 0) {
		FUNC2("Unable to init se_sess->sess_tag_pool,"
			" tag_num: %u\n", tag_num);
		FUNC1(se_sess->sess_cmd_map);
		se_sess->sess_cmd_map = NULL;
		return -ENOMEM;
	}

	return 0;
}