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
typedef  size_t uint32_t ;
struct hvterm_priv {unsigned long left; size_t offset; char* buf; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  termno; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct hvterm_priv** hvterm_privs ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long) ; 
 int FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(uint32_t vtermno, char *buf, int count)
{
	struct hvterm_priv *pv = hvterm_privs[vtermno];
	unsigned long i;
	unsigned long flags;
	int got;

	if (FUNC0(!pv))
		return 0;

	FUNC5(&pv->buf_lock, flags);

	if (pv->left == 0) {
		pv->offset = 0;
		pv->left = FUNC1(pv->termno, pv->buf, count);

		/*
		 * Work around a HV bug where it gives us a null
		 * after every \r.  -- paulus
		 */
		for (i = 1; i < pv->left; ++i) {
			if (pv->buf[i] == 0 && pv->buf[i-1] == '\r') {
				--pv->left;
				if (i < pv->left) {
					FUNC3(&pv->buf[i], &pv->buf[i+1],
						pv->left - i);
				}
			}
		}
	}

	got = FUNC4(count, pv->left);
	FUNC2(buf, &pv->buf[pv->offset], got);
	pv->offset += got;
	pv->left -= got;

	FUNC6(&pv->buf_lock, flags);

	return got;
}