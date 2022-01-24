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
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,char const*,struct qstr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  affs_intl_toupper ; 
 int /*<<< orphan*/  FUNC1 (struct dentry const*) ; 

__attribute__((used)) static int
FUNC2(const struct dentry *dentry,
		unsigned int len, const char *str, const struct qstr *name)
{
	return FUNC0(len, str, name, affs_intl_toupper,
				     FUNC1(dentry));

}