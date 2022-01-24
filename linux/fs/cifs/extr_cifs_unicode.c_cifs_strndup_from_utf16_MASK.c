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
struct nls_table {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_MAP_UNI_RSVD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int,int const,struct nls_table const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int const,struct nls_table const*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nls_table const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*,int const) ; 

char *
FUNC6(const char *src, const int maxlen,
			const bool is_unicode, const struct nls_table *codepage)
{
	int len;
	char *dst;

	if (is_unicode) {
		len = FUNC1((__le16 *) src, maxlen, codepage);
		len += FUNC3(codepage);
		dst = FUNC2(len, GFP_KERNEL);
		if (!dst)
			return NULL;
		FUNC0(dst, (__le16 *) src, len, maxlen, codepage,
			       NO_MAP_UNI_RSVD);
	} else {
		len = FUNC5(src, maxlen);
		len++;
		dst = FUNC2(len, GFP_KERNEL);
		if (!dst)
			return NULL;
		FUNC4(dst, src, len);
	}

	return dst;
}