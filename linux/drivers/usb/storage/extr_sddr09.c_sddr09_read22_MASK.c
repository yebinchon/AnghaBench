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
 int CONTROL_SHIFT ; 
 int FUNC0 (struct us_data*,int,unsigned long,int,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*,char*,int,int) ; 

__attribute__((used)) static int
FUNC2(struct us_data *us, unsigned long fromaddress,
	      int nr_of_pages, int pageshift, unsigned char *buf, int use_sg) {

	int bulklen = (nr_of_pages << pageshift) + (nr_of_pages << CONTROL_SHIFT);
	FUNC1(us, "reading %d pages, %d bytes\n", nr_of_pages, bulklen);
	return FUNC0(us, 2, fromaddress, nr_of_pages, bulklen,
			    buf, use_sg);
}