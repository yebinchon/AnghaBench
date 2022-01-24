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
typedef  struct tee_shm {int /*<<< orphan*/  b; } const tee_shm ;
typedef  struct tee_shm uuid_t ;
typedef  int u32 ;
struct tee_ioctl_open_session_arg {scalar_t__ ret; int /*<<< orphan*/  session; scalar_t__ num_params; int /*<<< orphan*/  clnt_login; int /*<<< orphan*/  uuid; } ;
typedef  struct tee_context {int /*<<< orphan*/  b; } const tee_context ;
typedef  int /*<<< orphan*/  sess_arg ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct tee_shm const*) ; 
 int FUNC1 (struct tee_shm const*) ; 
 scalar_t__ TEEC_SUCCESS ; 
 int /*<<< orphan*/  TEE_IOCTL_LOGIN_PUBLIC ; 
 int /*<<< orphan*/  TEE_IOCTL_UUID_LEN ; 
 int TEE_SHM_DMA_BUF ; 
 int TEE_SHM_MAPPED ; 
 struct tee_shm FUNC2 (int,int,int,int,int,int,int,int,int,int,int) ; 
 int FUNC3 (struct tee_shm const*,int /*<<< orphan*/ ,struct tee_shm const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tee_ioctl_open_session_arg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optee_ctx_match ; 
 int FUNC6 (struct tee_shm const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tee_shm const*) ; 
 int /*<<< orphan*/  FUNC9 (struct tee_shm const*,int /*<<< orphan*/ ) ; 
 struct tee_shm* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct tee_shm const*,struct tee_ioctl_open_session_arg*,int /*<<< orphan*/ *) ; 
 struct tee_shm* FUNC12 (struct tee_shm const*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tee_shm const*) ; 
 struct tee_shm* FUNC14 (struct tee_shm const*,int /*<<< orphan*/ ) ; 

int FUNC15(void)
{
	const uuid_t pta_uuid =
		FUNC2(0x7011a688, 0xddde, 0x4053,
			  0xa5, 0xa9, 0x7b, 0x3c, 0x4d, 0xdf, 0x13, 0xb8);
	struct tee_ioctl_open_session_arg sess_arg;
	struct tee_shm *device_shm = NULL;
	const uuid_t *device_uuid = NULL;
	struct tee_context *ctx = NULL;
	u32 shm_size = 0, idx, num_devices = 0;
	int rc;

	FUNC5(&sess_arg, 0, sizeof(sess_arg));

	/* Open context with OP-TEE driver */
	ctx = FUNC10(NULL, optee_ctx_match, NULL, NULL);
	if (FUNC0(ctx))
		return -ENODEV;

	/* Open session with device enumeration pseudo TA */
	FUNC4(sess_arg.uuid, pta_uuid.b, TEE_IOCTL_UUID_LEN);
	sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
	sess_arg.num_params = 0;

	rc = FUNC11(ctx, &sess_arg, NULL);
	if ((rc < 0) || (sess_arg.ret != TEEC_SUCCESS)) {
		/* Device enumeration pseudo TA not found */
		rc = 0;
		goto out_ctx;
	}

	rc = FUNC3(ctx, sess_arg.session, NULL, &shm_size);
	if (rc < 0 || !shm_size)
		goto out_sess;

	device_shm = FUNC12(ctx, shm_size,
				   TEE_SHM_MAPPED | TEE_SHM_DMA_BUF);
	if (FUNC0(device_shm)) {
		FUNC7("tee_shm_alloc failed\n");
		rc = FUNC1(device_shm);
		goto out_sess;
	}

	rc = FUNC3(ctx, sess_arg.session, device_shm, &shm_size);
	if (rc < 0)
		goto out_shm;

	device_uuid = FUNC14(device_shm, 0);
	if (FUNC0(device_uuid)) {
		FUNC7("tee_shm_get_va failed\n");
		rc = FUNC1(device_uuid);
		goto out_shm;
	}

	num_devices = shm_size / sizeof(uuid_t);

	for (idx = 0; idx < num_devices; idx++) {
		rc = FUNC6(&device_uuid[idx], idx);
		if (rc)
			goto out_shm;
	}

out_shm:
	FUNC13(device_shm);
out_sess:
	FUNC9(ctx, sess_arg.session);
out_ctx:
	FUNC8(ctx);

	return rc;
}