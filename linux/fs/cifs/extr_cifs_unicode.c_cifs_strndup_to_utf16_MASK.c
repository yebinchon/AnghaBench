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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct nls_table const*,int) ; 
 int FUNC1 (char const*,int const,struct nls_table const*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__le16 *
FUNC4(const char *src, const int maxlen, int *utf16_len,
		      const struct nls_table *cp, int remap)
{
	int len;
	__le16 *dst;

	len = FUNC1(src, maxlen, cp);
	len += 2; /* NULL */
	dst = FUNC2(len, GFP_KERNEL);
	if (!dst) {
		*utf16_len = 0;
		return NULL;
	}
	FUNC0(dst, src, FUNC3(src), cp, remap);
	*utf16_len = len;
	return dst;
}