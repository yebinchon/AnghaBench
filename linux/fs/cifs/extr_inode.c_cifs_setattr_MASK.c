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
struct iattr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cifs_tcon {scalar_t__ unix_ext; } ;
struct cifs_sb_info {int dummy; } ;

/* Variables and functions */
 struct cifs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC1 (struct cifs_sb_info*) ; 
 int FUNC2 (struct dentry*,struct iattr*) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 

int
FUNC4(struct dentry *direntry, struct iattr *attrs)
{
	struct cifs_sb_info *cifs_sb = FUNC0(direntry->d_sb);
	struct cifs_tcon *pTcon = FUNC1(cifs_sb);

	if (pTcon->unix_ext)
		return FUNC3(direntry, attrs);

	return FUNC2(direntry, attrs);

	/* BB: add cifs_setattr_legacy for really old servers */
}