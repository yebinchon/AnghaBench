
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {struct iscsi_chap* auth_protocol; } ;
struct iscsi_chap {int challenge; } ;


 int CHAP_CHALLENGE_LENGTH ;
 int bin2hex (unsigned char*,int ,int) ;
 int get_random_bytes_wait (int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,char*,unsigned char*) ;
 scalar_t__ sprintf (char*,char*,unsigned char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int chap_gen_challenge(
 struct iscsi_conn *conn,
 int caller,
 char *c_str,
 unsigned int *c_len)
{
 int ret;
 unsigned char challenge_asciihex[CHAP_CHALLENGE_LENGTH * 2 + 1];
 struct iscsi_chap *chap = conn->auth_protocol;

 memset(challenge_asciihex, 0, CHAP_CHALLENGE_LENGTH * 2 + 1);

 ret = get_random_bytes_wait(chap->challenge, CHAP_CHALLENGE_LENGTH);
 if (unlikely(ret))
  return ret;
 bin2hex(challenge_asciihex, chap->challenge,
    CHAP_CHALLENGE_LENGTH);



 *c_len += sprintf(c_str + *c_len, "CHAP_C=0x%s", challenge_asciihex);
 *c_len += 1;

 pr_debug("[%s] Sending CHAP_C=0x%s\n\n", (caller) ? "server" : "client",
   challenge_asciihex);
 return 0;
}
