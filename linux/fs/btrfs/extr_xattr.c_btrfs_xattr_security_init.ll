; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_xattr.c_btrfs_xattr_security_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_xattr.c_btrfs_xattr_security_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }

@btrfs_initxattrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_xattr_security_init(%struct.btrfs_trans_handle* %0, %struct.inode* %1, %struct.inode* %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = load %struct.qstr*, %struct.qstr** %8, align 8
  %12 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %13 = call i32 @security_inode_init_security(%struct.inode* %9, %struct.inode* %10, %struct.qstr* %11, i32* @btrfs_initxattrs, %struct.btrfs_trans_handle* %12)
  ret i32 %13
}

declare dso_local i32 @security_inode_init_security(%struct.inode*, %struct.inode*, %struct.qstr*, i32*, %struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
