
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int dummy; } ;
typedef int NEGOTIATE_RSP ;


 int EOPNOTSUPP ;
 int VFS ;
 int cifs_dbg (int ,char*) ;

__attribute__((used)) static inline int
decode_lanman_negprot_rsp(struct TCP_Server_Info *server, NEGOTIATE_RSP *pSMBr)
{
 cifs_dbg(VFS, "mount failed, cifs module not built with CIFS_WEAK_PW_HASH support\n");
 return -EOPNOTSUPP;
}
