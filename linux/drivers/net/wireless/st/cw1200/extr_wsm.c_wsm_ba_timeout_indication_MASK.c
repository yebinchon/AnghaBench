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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cw1200_common *priv,
				     struct wsm_buf *buf)
{
	u32 dummy;
	u8 tid;
	u8 dummy2;
	u8 addr[ETH_ALEN];

	dummy = FUNC1(buf);
	tid = FUNC2(buf);
	dummy2 = FUNC2(buf);
	FUNC0(buf, addr, ETH_ALEN);

	FUNC3("BlockACK timeout, tid %d, addr %pM\n",
		tid, addr);

	return 0;

underflow:
	return -EINVAL;
}