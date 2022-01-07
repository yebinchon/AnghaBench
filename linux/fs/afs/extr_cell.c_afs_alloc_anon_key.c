
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct afs_cell {char* name; struct key* anonymous_key; } ;


 int AFS_MAXCELLNAME ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int _debug (char*,struct key*,int ) ;
 int key_serial (struct key*) ;
 int memcpy (char*,char*,int) ;
 struct key* rxrpc_get_null_key (char*) ;
 int tolower (char) ;

__attribute__((used)) static int afs_alloc_anon_key(struct afs_cell *cell)
{
 struct key *key;
 char keyname[4 + AFS_MAXCELLNAME + 1], *cp, *dp;


 memcpy(keyname, "afs@", 4);
 dp = keyname + 4;
 cp = cell->name;
 do {
  *dp++ = tolower(*cp);
 } while (*cp++);

 key = rxrpc_get_null_key(keyname);
 if (IS_ERR(key))
  return PTR_ERR(key);

 cell->anonymous_key = key;

 _debug("anon key %p{%x}",
        cell->anonymous_key, key_serial(cell->anonymous_key));
 return 0;
}
