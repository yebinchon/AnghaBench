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
struct seq_file {int dummy; } ;
struct nubus_dirent {int /*<<< orphan*/  mask; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long*) ; 
 unsigned char* FUNC1 (struct nubus_dirent const*) ; 
 unsigned long FUNC2 (unsigned char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,unsigned long*,unsigned int) ; 

void FUNC5(struct seq_file *m,
			      const struct nubus_dirent *dirent,
			      unsigned int len)
{
	unsigned long buf[32];
	unsigned int buf_size = sizeof(buf);
	unsigned char *p = FUNC1(dirent);

	/* If possible, write out full buffers */
	while (len >= buf_size) {
		unsigned int i;

		for (i = 0; i < FUNC0(buf); i++)
			buf[i] = FUNC2(&p, sizeof(buf[0]),
					       dirent->mask);
		FUNC4(m, buf, buf_size);
		len -= buf_size;
	}
	/* If not, write out individual bytes */
	while (len--)
		FUNC3(m, FUNC2(&p, 1, dirent->mask));
}