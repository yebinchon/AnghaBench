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

/* Variables and functions */
 int EINVAL ; 
 int MAX_WORD_SIZE ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC3(const char *in, int isize, u8 *out, int osize)
{
	int n_parsed = 0;
	int word_start = 0;
	int word_end;
	int word_len;
	/* Temp buffer for holding a "word" of chars that represents one byte */
	#define MAX_WORD_SIZE 16
	char tmp[MAX_WORD_SIZE + 1];
	u8 byte;

	while (word_start < isize && n_parsed < osize) {
		/* Find the start of the next word */
		while (word_start < isize && FUNC0(in[word_start]))
			word_start++;
		 /* reached the end of the input before next word? */
		if (word_start >= isize)
			break;

		/* Find the end of this word */
		word_end = word_start;
		while (word_end < isize && !FUNC0(in[word_end]))
			word_end++;

		/* Copy to a tmp NULL terminated string */
		word_len = word_end - word_start;
		if (word_len > MAX_WORD_SIZE)
			return -EINVAL;
		FUNC2(tmp, in + word_start, word_len);
		tmp[word_len] = '\0';

		/*
		 * Convert from hex string, place in output. If fails to parse,
		 * just return -EINVAL because specific error code is only
		 * relevant for this one word, returning it would be confusing.
		 */
		if (FUNC1(tmp, 16, &byte))
			return -EINVAL;
		out[n_parsed++] = byte;

		word_start = word_end;
	}
	return n_parsed;
}