
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* CIFS_I (struct inode*) ;
 int CIFS_INO_INVALID_MAPPING ;
 int cifs_revalidate_mapping (struct inode*) ;
 int set_bit (int ,int *) ;

int
cifs_zap_mapping(struct inode *inode)
{
 set_bit(CIFS_INO_INVALID_MAPPING, &CIFS_I(inode)->flags);
 return cifs_revalidate_mapping(inode);
}
