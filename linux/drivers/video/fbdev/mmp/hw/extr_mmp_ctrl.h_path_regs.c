
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_path {scalar_t__ id; int dev; } ;
struct lcd_regs {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ PATH_P2 ;
 scalar_t__ PATH_PN ;
 scalar_t__ PATH_TV ;
 scalar_t__ ctrl_regs (struct mmp_path*) ;
 int dev_err (int ,char*,scalar_t__) ;

__attribute__((used)) static inline struct lcd_regs *path_regs(struct mmp_path *path)
{
 if (path->id == PATH_PN)
  return (struct lcd_regs *)(ctrl_regs(path) + 0xc0);
 else if (path->id == PATH_TV)
  return (struct lcd_regs *)ctrl_regs(path);
 else if (path->id == PATH_P2)
  return (struct lcd_regs *)(ctrl_regs(path) + 0x200);
 else {
  dev_err(path->dev, "path id %d invalid\n", path->id);
  BUG_ON(1);
  return ((void*)0);
 }
}
