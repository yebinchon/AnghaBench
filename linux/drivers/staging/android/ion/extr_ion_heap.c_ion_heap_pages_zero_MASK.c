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
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int FUNC0 (struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,struct page*,size_t,int /*<<< orphan*/ ) ; 

int FUNC3(struct page *page, size_t size, pgprot_t pgprot)
{
	struct scatterlist sg;

	FUNC1(&sg, 1);
	FUNC2(&sg, page, size, 0);
	return FUNC0(&sg, 1, pgprot);
}