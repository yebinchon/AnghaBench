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
struct file {int dummy; } ;
struct cifs_tcon {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 long EOPNOTSUPP ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 int FALLOC_FL_ZERO_RANGE ; 
 long FUNC0 (struct file*,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC1 (struct file*,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 long FUNC2 (struct file*,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static long FUNC3(struct file *file, struct cifs_tcon *tcon, int mode,
			   loff_t off, loff_t len)
{
	/* KEEP_SIZE already checked for by do_fallocate */
	if (mode & FALLOC_FL_PUNCH_HOLE)
		return FUNC0(file, tcon, off, len);
	else if (mode & FALLOC_FL_ZERO_RANGE) {
		if (mode & FALLOC_FL_KEEP_SIZE)
			return FUNC2(file, tcon, off, len, true);
		return FUNC2(file, tcon, off, len, false);
	} else if (mode == FALLOC_FL_KEEP_SIZE)
		return FUNC1(file, tcon, off, len, true);
	else if (mode == 0)
		return FUNC1(file, tcon, off, len, false);

	return -EOPNOTSUPP;
}