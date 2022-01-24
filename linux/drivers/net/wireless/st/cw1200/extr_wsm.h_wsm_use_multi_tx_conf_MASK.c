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
struct cw1200_common {int dummy; } ;
typedef  int /*<<< orphan*/  arg ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  WSM_MIB_USE_MULTI_TX_CONF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC2(struct cw1200_common *priv,
					bool enabled)
{
	__le32 arg = enabled ? FUNC0(1) : 0;

	return FUNC1(priv, WSM_MIB_USE_MULTI_TX_CONF,
			&arg, sizeof(arg));
}