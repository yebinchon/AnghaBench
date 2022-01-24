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
 int ALPHA ; 
 int A_CAP ; 
 int A_PUNC ; 
 int B_CAPSYM ; 
 int B_CTL ; 
 int B_SYM ; 
 int NUM ; 
 int PUNC ; 
 int WDLM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

int FUNC1(char *keyword)
{
	int value = 0;

	if (!FUNC0(keyword, "ALPHA"))
		value = ALPHA;
	else if (!FUNC0(keyword, "B_CTL"))
		value = B_CTL;
	else if (!FUNC0(keyword, "WDLM"))
		value = WDLM;
	else if (!FUNC0(keyword, "A_PUNC"))
		value = A_PUNC;
	else if (!FUNC0(keyword, "PUNC"))
		value = PUNC;
	else if (!FUNC0(keyword, "NUM"))
		value = NUM;
	else if (!FUNC0(keyword, "A_CAP"))
		value = A_CAP;
	else if (!FUNC0(keyword, "B_CAPSYM"))
		value = B_CAPSYM;
	else if (!FUNC0(keyword, "B_SYM"))
		value = B_SYM;
	return value;
}