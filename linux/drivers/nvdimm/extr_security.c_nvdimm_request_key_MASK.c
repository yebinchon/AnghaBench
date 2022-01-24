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
struct device {int dummy; } ;
struct nvdimm {int /*<<< orphan*/  dimm_id; struct device dev; } ;
struct key {int /*<<< orphan*/  sem; } ;
struct encrypted_key_payload {scalar_t__ decrypted_datalen; } ;
typedef  int /*<<< orphan*/  NVDIMM_PREFIX ;

/* Variables and functions */
 int /*<<< orphan*/  ENOKEY ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  NVDIMM_KEY_DESC_LEN ; 
 scalar_t__ NVDIMM_PASSPHRASE_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 struct encrypted_key_payload* FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  key_type_encrypted ; 
 struct key* FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct key *FUNC9(struct nvdimm *nvdimm)
{
	struct key *key = NULL;
	static const char NVDIMM_PREFIX[] = "nvdimm:";
	char desc[NVDIMM_KEY_DESC_LEN + sizeof(NVDIMM_PREFIX)];
	struct device *dev = &nvdimm->dev;

	FUNC7(desc, "%s%s", NVDIMM_PREFIX, nvdimm->dimm_id);
	key = FUNC6(&key_type_encrypted, desc, "");
	if (FUNC0(key)) {
		if (FUNC1(key) == -ENOKEY)
			FUNC3(dev, "request_key() found no key\n");
		else
			FUNC3(dev, "request_key() upcall failed\n");
		key = NULL;
	} else {
		struct encrypted_key_payload *epayload;

		FUNC4(&key->sem);
		epayload = FUNC2(key);
		if (epayload->decrypted_datalen != NVDIMM_PASSPHRASE_LEN) {
			FUNC8(&key->sem);
			FUNC5(key);
			key = NULL;
		}
	}

	return key;
}