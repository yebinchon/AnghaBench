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
struct dsd32 {int /*<<< orphan*/  length; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static inline void FUNC3(struct dsd32 **dsd, struct scatterlist *sg)
{
	FUNC0(FUNC1(sg), &(*dsd)->address);
	FUNC0(FUNC2(sg),     &(*dsd)->length);
	(*dsd)++;
}