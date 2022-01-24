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
struct iova {int dummy; } ;
struct imgu_device {int /*<<< orphan*/  iova_domain; int /*<<< orphan*/  mmu; } ;
struct imgu_css_map {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iova*) ; 
 struct iova* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iova*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct iova*) ; 

void FUNC8(struct imgu_device *imgu, struct imgu_css_map *map)
{
	struct iova *iova;

	iova = FUNC2(&imgu->iova_domain,
			 FUNC5(&imgu->iova_domain, map->daddr));
	if (FUNC0(!iova))
		return;

	FUNC3(imgu->mmu, FUNC4(&imgu->iova_domain, iova),
		       FUNC7(iova) << FUNC6(&imgu->iova_domain));

	FUNC1(&imgu->iova_domain, iova);
}