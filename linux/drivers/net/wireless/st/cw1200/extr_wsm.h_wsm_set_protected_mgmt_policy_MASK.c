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
typedef  int /*<<< orphan*/  val ;
struct wsm_protected_mgmt_policy {scalar_t__ encryptionForAuthFrame; scalar_t__ unprotectedMgmtFramesAllowed; scalar_t__ protectedMgmtEnable; } ;
struct cw1200_common {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WSM_MIB_ID_PROTECTED_MGMT_POLICY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(struct cw1200_common *priv,
		struct wsm_protected_mgmt_policy *arg)
{
	__le32 val = 0;
	int ret;
	if (arg->protectedMgmtEnable)
		val |= FUNC1(FUNC0(0));
	if (arg->unprotectedMgmtFramesAllowed)
		val |= FUNC1(FUNC0(1));
	if (arg->encryptionForAuthFrame)
		val |= FUNC1(FUNC0(2));
	ret = FUNC2(priv, WSM_MIB_ID_PROTECTED_MGMT_POLICY,
			&val, sizeof(val));
	return ret;
}