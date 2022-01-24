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
typedef  int /*<<< orphan*/  u16 ;
struct vringh {int dummy; } ;
typedef  int /*<<< orphan*/  __virtio16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vringh const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(const struct vringh *vrh, __virtio16 *p, u16 val)
{
	FUNC0(*p, FUNC1(vrh, val));
	return 0;
}