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
typedef  union fscrypt_policy {int dummy; } fscrypt_policy ;
struct inode {int i_mode; int /*<<< orphan*/  i_ino; } ;
struct fscrypt_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct fscrypt_mode* FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IFMT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct fscrypt_mode* available_modes ; 
 size_t FUNC5 (union fscrypt_policy const*) ; 
 size_t FUNC6 (union fscrypt_policy const*) ; 

__attribute__((used)) static struct fscrypt_mode *
FUNC7(const union fscrypt_policy *policy,
		       const struct inode *inode)
{
	if (FUNC3(inode->i_mode))
		return &available_modes[FUNC5(policy)];

	if (FUNC1(inode->i_mode) || FUNC2(inode->i_mode))
		return &available_modes[FUNC6(policy)];

	FUNC4(1, "fscrypt: filesystem tried to load encryption info for inode %lu, which is not encryptable (file type %d)\n",
		  inode->i_ino, (inode->i_mode & S_IFMT));
	return FUNC0(-EINVAL);
}