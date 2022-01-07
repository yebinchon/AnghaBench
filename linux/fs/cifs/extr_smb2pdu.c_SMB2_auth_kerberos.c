
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SMB2_sess_data {int * func; int result; } ;


 int EOPNOTSUPP ;
 int VFS ;
 int cifs_dbg (int ,char*) ;

__attribute__((used)) static void
SMB2_auth_kerberos(struct SMB2_sess_data *sess_data)
{
 cifs_dbg(VFS, "Kerberos negotiated but upcall support disabled!\n");
 sess_data->result = -EOPNOTSUPP;
 sess_data->func = ((void*)0);
}
