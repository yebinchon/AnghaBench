
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FYI ;
 int GlobalCurrentXid ;
 int GlobalMaxActiveXid ;
 int GlobalMid_Lock ;
 int GlobalTotalActiveXid ;
 int cifs_dbg (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned int
_get_xid(void)
{
 unsigned int xid;

 spin_lock(&GlobalMid_Lock);
 GlobalTotalActiveXid++;


 if (GlobalTotalActiveXid > GlobalMaxActiveXid)
  GlobalMaxActiveXid = GlobalTotalActiveXid;
 if (GlobalTotalActiveXid > 65000)
  cifs_dbg(FYI, "warning: more than 65000 requests active\n");
 xid = GlobalCurrentXid++;
 spin_unlock(&GlobalMid_Lock);
 return xid;
}
