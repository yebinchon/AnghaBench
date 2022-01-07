
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum debuglevel { ____Placeholder_debuglevel } debuglevel ;
struct TYPE_7__ {int Subcommand; int Command; int ApplId; } ;
typedef TYPE_1__ _cmsg ;
struct TYPE_8__ {int buf; } ;
typedef TYPE_2__ _cdebbuf ;


 int HZ ;
 int ___ratelimit (int*,char const*) ;
 int capi_cmd2str (int ,int ) ;
 TYPE_2__* capi_cmsg2str (TYPE_1__*) ;
 int cdebbuf_free (TYPE_2__*) ;
 int gig_dbg (int,char*,char const*,int ,int ) ;
 int gigaset_debuglevel ;
 int msg_dump_ratelimit ;

__attribute__((used)) static inline void dump_cmsg(enum debuglevel level, const char *tag, _cmsg *p)
{
}
