
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
struct cifs_tcon {int treeName; int ses; } ;


 int CIFSTCon (int ,int ,int ,struct cifs_tcon*,struct nls_table const*) ;

__attribute__((used)) static inline int __cifs_reconnect_tcon(const struct nls_table *nlsc,
     struct cifs_tcon *tcon)
{
 return CIFSTCon(0, tcon->ses, tcon->treeName, tcon, nlsc);
}
