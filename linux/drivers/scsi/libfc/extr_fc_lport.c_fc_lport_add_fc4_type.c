
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ff_type_map; } ;
struct fc_lport {TYPE_1__ fcts; } ;
typedef enum fc_fh_type { ____Placeholder_fc_fh_type } fc_fh_type ;
typedef int __be32 ;


 int FC_NS_BPW ;
 int htonl (unsigned long) ;
 unsigned long ntohl (int ) ;

__attribute__((used)) static void fc_lport_add_fc4_type(struct fc_lport *lport, enum fc_fh_type type)
{
 __be32 *mp;

 mp = &lport->fcts.ff_type_map[type / FC_NS_BPW];
 *mp = htonl(ntohl(*mp) | 1UL << (type % FC_NS_BPW));
}
