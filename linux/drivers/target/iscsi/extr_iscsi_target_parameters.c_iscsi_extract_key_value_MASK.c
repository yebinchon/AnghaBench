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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 

int FUNC2(char *textbuf, char **key, char **value)
{
	*value = FUNC1(textbuf, '=');
	if (!*value) {
		FUNC0("Unable to locate \"=\" separator for key,"
				" ignoring request.\n");
		return -1;
	}

	*key = textbuf;
	**value = '\0';
	*value = *value + 1;

	return 0;
}