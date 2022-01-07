
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum debuglevel { ____Placeholder_debuglevel } debuglevel ;


 int CAPIMSG_APPID (unsigned char*) ;
 int CAPIMSG_COMMAND (unsigned char*) ;
 int CAPIMSG_CONTROL (unsigned char*) ;
 int CAPIMSG_DATALEN (unsigned char*) ;
 int CAPIMSG_LEN (unsigned char*) ;
 int CAPIMSG_MSGID (unsigned char*) ;
 scalar_t__ CAPIMSG_SUBCOMMAND (unsigned char*) ;
 int CAPI_DATA_B3 ;
 scalar_t__ CAPI_IND ;
 scalar_t__ CAPI_REQ ;
 int DEBUG_LLDATA ;
 int GFP_ATOMIC ;
 int gig_dbg (int,char*,...) ;
 int gigaset_debuglevel ;
 char hex_asc_hi (unsigned char) ;
 char hex_asc_lo (unsigned char) ;
 int kfree (char*) ;
 char* kmalloc_array (int,int,int ) ;

__attribute__((used)) static inline void dump_rawmsg(enum debuglevel level, const char *tag,
          unsigned char *data)
{
}
