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
typedef  int /*<<< orphan*/  u32 ;
struct protaeskeytoken {int len; char protkey; int /*<<< orphan*/  keytype; int /*<<< orphan*/  version; int /*<<< orphan*/  type; } ;
struct pkey_protkey {int len; struct protaeskeytoken protkey; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  protkeytoken ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TOKTYPE_NON_CCA ; 
 int /*<<< orphan*/  TOKVER_PROTECTED_KEY ; 
 int /*<<< orphan*/  FUNC0 (char*,struct protaeskeytoken*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct protaeskeytoken*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pkey_protkey*) ; 

__attribute__((used)) static ssize_t FUNC3(u32 keytype, bool is_xts, char *buf,
					  loff_t off, size_t count)
{
	struct protaeskeytoken protkeytoken;
	struct pkey_protkey protkey;
	int rc;

	if (off != 0 || count < sizeof(protkeytoken))
		return -EINVAL;
	if (is_xts)
		if (count < 2 * sizeof(protkeytoken))
			return -EINVAL;

	FUNC1(&protkeytoken, 0, sizeof(protkeytoken));
	protkeytoken.type = TOKTYPE_NON_CCA;
	protkeytoken.version = TOKVER_PROTECTED_KEY;
	protkeytoken.keytype = keytype;

	rc = FUNC2(protkeytoken.keytype, &protkey);
	if (rc)
		return rc;

	protkeytoken.len = protkey.len;
	FUNC0(&protkeytoken.protkey, &protkey.protkey, protkey.len);

	FUNC0(buf, &protkeytoken, sizeof(protkeytoken));

	if (is_xts) {
		rc = FUNC2(protkeytoken.keytype, &protkey);
		if (rc)
			return rc;

		protkeytoken.len = protkey.len;
		FUNC0(&protkeytoken.protkey, &protkey.protkey, protkey.len);

		FUNC0(buf + sizeof(protkeytoken), &protkeytoken,
		       sizeof(protkeytoken));

		return 2 * sizeof(protkeytoken);
	}

	return sizeof(protkeytoken);
}