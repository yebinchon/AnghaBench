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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static bool FUNC2(char **input1, char **input2)
{
	bool same = false;
	char *end1 = FUNC0(*input1);
	char *end2 = FUNC0(*input2);
	size_t length1 = end1 - *input1;
	size_t length2 = end2 - *input2;

	if ((length1 == length2) && !FUNC1(*input1, *input2, length1))
		same = true;

	*input1 = end1;
	*input2 = end2;
	return same;
}