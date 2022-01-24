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
typedef  int /*<<< orphan*/  u_long ;
struct m_pool {int /*<<< orphan*/  nump; } ;
typedef  int /*<<< orphan*/  m_bush_t ;

/* Variables and functions */
 struct m_pool* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct m_pool*) ; 
 struct m_pool* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct m_pool*,int,char*) ; 
 int /*<<< orphan*/  ncr53c8xx_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(m_bush_t bush, int size, char *name)
{
	u_long flags;
	struct m_pool *mp;
	void *m = NULL;

	FUNC4(&ncr53c8xx_lock, flags);
	mp = FUNC2(bush);
	if (!mp)
		mp = FUNC0(bush);
	if (mp)
		m = FUNC3(mp, size, name);
	if (mp && !mp->nump)
		FUNC1(mp);
	FUNC5(&ncr53c8xx_lock, flags);

	return m;
}