
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int flags; } ;


 int ULPI_FC_FS4LS ;
 int ULPI_FC_HS ;
 int ULPI_FC_LS ;
 int ULPI_FC_OP_DIS_NRZI ;
 int ULPI_FC_OP_NODRV ;
 int ULPI_FC_OP_NSYNC_NEOP ;
 int ULPI_FC_TERMSEL ;
 int ULPI_FUNC_CTRL ;
 unsigned int ULPI_FUNC_CTRL_FS4LS ;
 unsigned int ULPI_FUNC_CTRL_FULL_SPEED ;
 unsigned int ULPI_FUNC_CTRL_HIGH_SPEED ;
 unsigned int ULPI_FUNC_CTRL_LOW_SPEED ;
 unsigned int ULPI_FUNC_CTRL_OPMODE_DISABLE_NRZI ;
 unsigned int ULPI_FUNC_CTRL_OPMODE_NONDRIVING ;
 unsigned int ULPI_FUNC_CTRL_OPMODE_NORMAL ;
 unsigned int ULPI_FUNC_CTRL_OPMODE_NOSYNC_NOEOP ;
 unsigned int ULPI_FUNC_CTRL_SUSPENDM ;
 unsigned int ULPI_FUNC_CTRL_TERMSELECT ;
 int usb_phy_io_write (struct usb_phy*,unsigned int,int ) ;

__attribute__((used)) static int ulpi_set_fc_flags(struct usb_phy *phy)
{
 unsigned int flags = 0;





 if (phy->flags & ULPI_FC_HS)
  flags |= ULPI_FUNC_CTRL_HIGH_SPEED;
 else if (phy->flags & ULPI_FC_LS)
  flags |= ULPI_FUNC_CTRL_LOW_SPEED;
 else if (phy->flags & ULPI_FC_FS4LS)
  flags |= ULPI_FUNC_CTRL_FS4LS;
 else
  flags |= ULPI_FUNC_CTRL_FULL_SPEED;

 if (phy->flags & ULPI_FC_TERMSEL)
  flags |= ULPI_FUNC_CTRL_TERMSELECT;





 if (phy->flags & ULPI_FC_OP_NODRV)
  flags |= ULPI_FUNC_CTRL_OPMODE_NONDRIVING;
 else if (phy->flags & ULPI_FC_OP_DIS_NRZI)
  flags |= ULPI_FUNC_CTRL_OPMODE_DISABLE_NRZI;
 else if (phy->flags & ULPI_FC_OP_NSYNC_NEOP)
  flags |= ULPI_FUNC_CTRL_OPMODE_NOSYNC_NOEOP;
 else
  flags |= ULPI_FUNC_CTRL_OPMODE_NORMAL;





 flags |= ULPI_FUNC_CTRL_SUSPENDM;

 return usb_phy_io_write(phy, flags, ULPI_FUNC_CTRL);
}
