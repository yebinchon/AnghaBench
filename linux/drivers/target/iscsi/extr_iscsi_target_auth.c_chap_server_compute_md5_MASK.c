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
struct shash_desc {struct crypto_shash* tfm; } ;
struct iscsi_node_auth {unsigned char* userid; unsigned char* password; unsigned char* password_mutual; unsigned char* userid_mutual; int /*<<< orphan*/  authenticate_target; } ;
struct iscsi_conn {struct iscsi_chap* auth_protocol; } ;
struct iscsi_chap {unsigned char id; unsigned char* challenge; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int CHAP_CHALLENGE_LENGTH ; 
 int CHAP_CHALLENGE_STR_LEN ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned char HEX ; 
 scalar_t__ FUNC1 (struct crypto_shash*) ; 
 int MAX_CHAP_N_SIZE ; 
 int MAX_RESPONSE_LENGTH ; 
 int MD5_SIGNATURE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 struct crypto_shash* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_shash*) ; 
 scalar_t__ FUNC5 (struct crypto_shash*) ; 
 int FUNC6 (struct shash_desc*,unsigned char*,int,unsigned char*) ; 
 int FUNC7 (struct shash_desc*) ; 
 int FUNC8 (struct shash_desc*,...) ; 
 scalar_t__ FUNC9 (char*,char*,int,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC10 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 struct shash_desc* FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC13 (unsigned char*,int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned char* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct shash_desc*) ; 
 scalar_t__ FUNC16 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 unsigned int FUNC20 (char*,char*,unsigned char*) ; 
 int FUNC21 (unsigned char*) ; 
 scalar_t__ FUNC22 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC23(
	struct iscsi_conn *conn,
	struct iscsi_node_auth *auth,
	char *nr_in_ptr,
	char *nr_out_ptr,
	unsigned int *nr_out_len)
{
	unsigned long id;
	unsigned char id_as_uchar;
	unsigned char digest[MD5_SIGNATURE_SIZE];
	unsigned char type, response[MD5_SIGNATURE_SIZE * 2 + 2];
	unsigned char identifier[10], *challenge = NULL;
	unsigned char *challenge_binhex = NULL;
	unsigned char client_digest[MD5_SIGNATURE_SIZE];
	unsigned char server_digest[MD5_SIGNATURE_SIZE];
	unsigned char chap_n[MAX_CHAP_N_SIZE], chap_r[MAX_RESPONSE_LENGTH];
	size_t compare_len;
	struct iscsi_chap *chap = conn->auth_protocol;
	struct crypto_shash *tfm = NULL;
	struct shash_desc *desc = NULL;
	int auth_ret = -1, ret, challenge_len;

	FUNC17(identifier, 0, 10);
	FUNC17(chap_n, 0, MAX_CHAP_N_SIZE);
	FUNC17(chap_r, 0, MAX_RESPONSE_LENGTH);
	FUNC17(digest, 0, MD5_SIGNATURE_SIZE);
	FUNC17(response, 0, MD5_SIGNATURE_SIZE * 2 + 2);
	FUNC17(client_digest, 0, MD5_SIGNATURE_SIZE);
	FUNC17(server_digest, 0, MD5_SIGNATURE_SIZE);

	challenge = FUNC14(CHAP_CHALLENGE_STR_LEN, GFP_KERNEL);
	if (!challenge) {
		FUNC19("Unable to allocate challenge buffer\n");
		goto out;
	}

	challenge_binhex = FUNC14(CHAP_CHALLENGE_STR_LEN, GFP_KERNEL);
	if (!challenge_binhex) {
		FUNC19("Unable to allocate challenge_binhex buffer\n");
		goto out;
	}
	/*
	 * Extract CHAP_N.
	 */
	if (FUNC9(nr_in_ptr, "CHAP_N", MAX_CHAP_N_SIZE, chap_n,
				&type) < 0) {
		FUNC19("Could not find CHAP_N.\n");
		goto out;
	}
	if (type == HEX) {
		FUNC19("Could not find CHAP_N.\n");
		goto out;
	}

	/* Include the terminating NULL in the compare */
	compare_len = FUNC21(auth->userid) + 1;
	if (FUNC22(chap_n, auth->userid, compare_len) != 0) {
		FUNC19("CHAP_N values do not match!\n");
		goto out;
	}
	FUNC18("[server] Got CHAP_N=%s\n", chap_n);
	/*
	 * Extract CHAP_R.
	 */
	if (FUNC9(nr_in_ptr, "CHAP_R", MAX_RESPONSE_LENGTH, chap_r,
				&type) < 0) {
		FUNC19("Could not find CHAP_R.\n");
		goto out;
	}
	if (type != HEX) {
		FUNC19("Could not find CHAP_R.\n");
		goto out;
	}
	if (FUNC21(chap_r) != MD5_SIGNATURE_SIZE * 2) {
		FUNC19("Malformed CHAP_R\n");
		goto out;
	}
	if (FUNC10(client_digest, chap_r, MD5_SIGNATURE_SIZE) < 0) {
		FUNC19("Malformed CHAP_R\n");
		goto out;
	}

	FUNC18("[server] Got CHAP_R=%s\n", chap_r);

	tfm = FUNC3("md5", 0, 0);
	if (FUNC1(tfm)) {
		tfm = NULL;
		FUNC19("Unable to allocate struct crypto_shash\n");
		goto out;
	}

	desc = FUNC12(sizeof(*desc) + FUNC5(tfm), GFP_KERNEL);
	if (!desc) {
		FUNC19("Unable to allocate struct shash_desc\n");
		goto out;
	}

	desc->tfm = tfm;

	ret = FUNC7(desc);
	if (ret < 0) {
		FUNC19("crypto_shash_init() failed\n");
		goto out;
	}

	ret = FUNC8(desc, &chap->id, 1);
	if (ret < 0) {
		FUNC19("crypto_shash_update() failed for id\n");
		goto out;
	}

	ret = FUNC8(desc, (char *)&auth->password,
				  FUNC21(auth->password));
	if (ret < 0) {
		FUNC19("crypto_shash_update() failed for password\n");
		goto out;
	}

	ret = FUNC6(desc, chap->challenge,
				 CHAP_CHALLENGE_LENGTH, server_digest);
	if (ret < 0) {
		FUNC19("crypto_shash_finup() failed for challenge\n");
		goto out;
	}

	FUNC2(response, server_digest, MD5_SIGNATURE_SIZE);
	FUNC18("[server] MD5 Server Digest: %s\n", response);

	if (FUNC16(server_digest, client_digest, MD5_SIGNATURE_SIZE) != 0) {
		FUNC18("[server] MD5 Digests do not match!\n\n");
		goto out;
	} else
		FUNC18("[server] MD5 Digests match, CHAP connection"
				" successful.\n\n");
	/*
	 * One way authentication has succeeded, return now if mutual
	 * authentication is not enabled.
	 */
	if (!auth->authenticate_target) {
		auth_ret = 0;
		goto out;
	}
	/*
	 * Get CHAP_I.
	 */
	if (FUNC9(nr_in_ptr, "CHAP_I", 10, identifier, &type) < 0) {
		FUNC19("Could not find CHAP_I.\n");
		goto out;
	}

	if (type == HEX)
		ret = FUNC13(&identifier[2], 0, &id);
	else
		ret = FUNC13(identifier, 0, &id);

	if (ret < 0) {
		FUNC19("kstrtoul() failed for CHAP identifier: %d\n", ret);
		goto out;
	}
	if (id > 255) {
		FUNC19("chap identifier: %lu greater than 255\n", id);
		goto out;
	}
	/*
	 * RFC 1994 says Identifier is no more than octet (8 bits).
	 */
	FUNC18("[server] Got CHAP_I=%lu\n", id);
	/*
	 * Get CHAP_C.
	 */
	if (FUNC9(nr_in_ptr, "CHAP_C", CHAP_CHALLENGE_STR_LEN,
			challenge, &type) < 0) {
		FUNC19("Could not find CHAP_C.\n");
		goto out;
	}

	if (type != HEX) {
		FUNC19("Could not find CHAP_C.\n");
		goto out;
	}
	challenge_len = FUNC0(FUNC21(challenge), 2);
	if (!challenge_len) {
		FUNC19("Unable to convert incoming challenge\n");
		goto out;
	}
	if (challenge_len > 1024) {
		FUNC19("CHAP_C exceeds maximum binary size of 1024 bytes\n");
		goto out;
	}
	if (FUNC10(challenge_binhex, challenge, challenge_len) < 0) {
		FUNC19("Malformed CHAP_C\n");
		goto out;
	}
	FUNC18("[server] Got CHAP_C=%s\n", challenge);
	/*
	 * During mutual authentication, the CHAP_C generated by the
	 * initiator must not match the original CHAP_C generated by
	 * the target.
	 */
	if (!FUNC16(challenge_binhex, chap->challenge, CHAP_CHALLENGE_LENGTH)) {
		FUNC19("initiator CHAP_C matches target CHAP_C, failing"
		       " login attempt\n");
		goto out;
	}
	/*
	 * Generate CHAP_N and CHAP_R for mutual authentication.
	 */
	ret = FUNC7(desc);
	if (ret < 0) {
		FUNC19("crypto_shash_init() failed\n");
		goto out;
	}

	/* To handle both endiannesses */
	id_as_uchar = id;
	ret = FUNC8(desc, &id_as_uchar, 1);
	if (ret < 0) {
		FUNC19("crypto_shash_update() failed for id\n");
		goto out;
	}

	ret = FUNC8(desc, auth->password_mutual,
				  FUNC21(auth->password_mutual));
	if (ret < 0) {
		FUNC19("crypto_shash_update() failed for"
				" password_mutual\n");
		goto out;
	}
	/*
	 * Convert received challenge to binary hex.
	 */
	ret = FUNC6(desc, challenge_binhex, challenge_len,
				 digest);
	if (ret < 0) {
		FUNC19("crypto_shash_finup() failed for ma challenge\n");
		goto out;
	}

	/*
	 * Generate CHAP_N and CHAP_R.
	 */
	*nr_out_len = FUNC20(nr_out_ptr, "CHAP_N=%s", auth->userid_mutual);
	*nr_out_len += 1;
	FUNC18("[server] Sending CHAP_N=%s\n", auth->userid_mutual);
	/*
	 * Convert response from binary hex to ascii hext.
	 */
	FUNC2(response, digest, MD5_SIGNATURE_SIZE);
	*nr_out_len += FUNC20(nr_out_ptr + *nr_out_len, "CHAP_R=0x%s",
			response);
	*nr_out_len += 1;
	FUNC18("[server] Sending CHAP_R=0x%s\n", response);
	auth_ret = 0;
out:
	FUNC15(desc);
	if (tfm)
		FUNC4(tfm);
	FUNC11(challenge);
	FUNC11(challenge_binhex);
	return auth_ret;
}