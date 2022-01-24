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
struct sta_info {int /*<<< orphan*/  auth_list; int /*<<< orphan*/  asoc_list; int /*<<< orphan*/  sta_recvpriv; int /*<<< orphan*/  sta_xmitpriv; int /*<<< orphan*/  hash_list; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sta_info *psta)
{
	FUNC3((u8 *)psta, 0, sizeof(struct sta_info));
	FUNC4(&psta->lock);
	FUNC0(&psta->list);
	FUNC0(&psta->hash_list);
	FUNC2(&psta->sta_xmitpriv);
	FUNC1(&psta->sta_recvpriv);
	FUNC0(&psta->asoc_list);
	FUNC0(&psta->auth_list);
}