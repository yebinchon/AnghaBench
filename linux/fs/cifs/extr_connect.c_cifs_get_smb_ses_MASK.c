#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct smb_vol {int /*<<< orphan*/  local_nls; int /*<<< orphan*/  sign; int /*<<< orphan*/  sectype; int /*<<< orphan*/  linux_uid; int /*<<< orphan*/  cred_uid; scalar_t__ domainauto; scalar_t__ domainname; scalar_t__ password; scalar_t__ username; } ;
struct cifs_ses {int /*<<< orphan*/  smb_ses_list; int /*<<< orphan*/  session_mutex; int /*<<< orphan*/  sign; int /*<<< orphan*/  sectype; int /*<<< orphan*/  linux_uid; int /*<<< orphan*/  cred_uid; scalar_t__ domainAuto; void* domainName; void* password; void* user_name; int /*<<< orphan*/  serverName; struct TCP_Server_Info* server; scalar_t__ need_reconnect; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct TCP_Server_Info {int /*<<< orphan*/  smb_ses_list; TYPE_1__ dstaddr; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int ENOMEM ; 
 struct cifs_ses* FUNC0 (int) ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct cifs_ses* FUNC2 (struct TCP_Server_Info*,struct smb_vol*) ; 
 int FUNC3 (unsigned int,struct cifs_ses*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_ses*) ; 
 int /*<<< orphan*/  FUNC5 (struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cifs_ses*,struct smb_vol*) ; 
 int FUNC7 (unsigned int,struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 unsigned int FUNC9 () ; 
 void* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct cifs_ses* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct cifs_ses*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

struct cifs_ses *
FUNC19(struct TCP_Server_Info *server, struct smb_vol *volume_info)
{
	int rc = -ENOMEM;
	unsigned int xid;
	struct cifs_ses *ses;
	struct sockaddr_in *addr = (struct sockaddr_in *)&server->dstaddr;
	struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&server->dstaddr;

	xid = FUNC9();

	ses = FUNC2(server, volume_info);
	if (ses) {
		FUNC1(FYI, "Existing smb sess found (status=%d)\n",
			 ses->status);

		FUNC12(&ses->session_mutex);
		rc = FUNC3(xid, ses);
		if (rc) {
			FUNC13(&ses->session_mutex);
			/* problem -- put our ses reference */
			FUNC4(ses);
			FUNC8(xid);
			return FUNC0(rc);
		}
		if (ses->need_reconnect) {
			FUNC1(FYI, "Session needs reconnect\n");
			rc = FUNC7(xid, ses,
						volume_info->local_nls);
			if (rc) {
				FUNC13(&ses->session_mutex);
				/* problem -- put our reference */
				FUNC4(ses);
				FUNC8(xid);
				return FUNC0(rc);
			}
		}
		FUNC13(&ses->session_mutex);

		/* existing SMB ses has a server reference already */
		FUNC5(server, 0);
		FUNC8(xid);
		return ses;
	}

	FUNC1(FYI, "Existing smb sess not found\n");
	ses = FUNC14();
	if (ses == NULL)
		goto get_ses_fail;

	/* new SMB session uses our server ref */
	ses->server = server;
	if (server->dstaddr.ss_family == AF_INET6)
		FUNC18(ses->serverName, "%pI6", &addr6->sin6_addr);
	else
		FUNC18(ses->serverName, "%pI4", &addr->sin_addr);

	if (volume_info->username) {
		ses->user_name = FUNC10(volume_info->username, GFP_KERNEL);
		if (!ses->user_name)
			goto get_ses_fail;
	}

	/* volume_info->password freed at unmount */
	if (volume_info->password) {
		ses->password = FUNC10(volume_info->password, GFP_KERNEL);
		if (!ses->password)
			goto get_ses_fail;
	}
	if (volume_info->domainname) {
		ses->domainName = FUNC10(volume_info->domainname, GFP_KERNEL);
		if (!ses->domainName)
			goto get_ses_fail;
	}
	if (volume_info->domainauto)
		ses->domainAuto = volume_info->domainauto;
	ses->cred_uid = volume_info->cred_uid;
	ses->linux_uid = volume_info->linux_uid;

	ses->sectype = volume_info->sectype;
	ses->sign = volume_info->sign;
	FUNC12(&ses->session_mutex);
	rc = FUNC3(xid, ses);
	if (!rc)
		rc = FUNC7(xid, ses, volume_info->local_nls);
	FUNC13(&ses->session_mutex);
	if (rc)
		goto get_ses_fail;

	/* success, put it on the list */
	FUNC16(&cifs_tcp_ses_lock);
	FUNC11(&ses->smb_ses_list, &server->smb_ses_list);
	FUNC17(&cifs_tcp_ses_lock);

	FUNC8(xid);

	FUNC6(ses, volume_info);

	return ses;

get_ses_fail:
	FUNC15(ses);
	FUNC8(xid);
	return FUNC0(rc);
}