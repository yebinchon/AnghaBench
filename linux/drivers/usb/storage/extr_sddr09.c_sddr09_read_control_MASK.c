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
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_SHIFT ; 
 int FUNC0 (struct us_data*,unsigned long,unsigned int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*,char*,unsigned long,unsigned int) ; 

__attribute__((used)) static int
FUNC2(struct us_data *us,
		unsigned long address,
		unsigned int blocks,
		unsigned char *content,
		int use_sg) {

	FUNC1(us, "Read control address %lu, blocks %d\n",
		     address, blocks);

	return FUNC0(us, address, blocks,
			     CONTROL_SHIFT, content, use_sg);
}