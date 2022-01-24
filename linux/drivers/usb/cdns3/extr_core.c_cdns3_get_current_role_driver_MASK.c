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
struct cdns3_role_driver {int dummy; } ;
struct cdns3 {size_t role; struct cdns3_role_driver** roles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline
struct cdns3_role_driver *FUNC1(struct cdns3 *cdns)
{
	FUNC0(!cdns->roles[cdns->role]);
	return cdns->roles[cdns->role];
}