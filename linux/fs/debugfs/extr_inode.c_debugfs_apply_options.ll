; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_apply_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_apply_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.debugfs_fs_info* }
%struct.debugfs_fs_info = type { %struct.debugfs_mount_opts }
%struct.debugfs_mount_opts = type { i32, i32, i32 }
%struct.inode = type { i32, i32, i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @debugfs_apply_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_apply_options(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.debugfs_fs_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.debugfs_mount_opts*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 1
  %8 = load %struct.debugfs_fs_info*, %struct.debugfs_fs_info** %7, align 8
  store %struct.debugfs_fs_info* %8, %struct.debugfs_fs_info** %3, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.inode* @d_inode(i32 %11)
  store %struct.inode* %12, %struct.inode** %4, align 8
  %13 = load %struct.debugfs_fs_info*, %struct.debugfs_fs_info** %3, align 8
  %14 = getelementptr inbounds %struct.debugfs_fs_info, %struct.debugfs_fs_info* %13, i32 0, i32 0
  store %struct.debugfs_mount_opts* %14, %struct.debugfs_mount_opts** %5, align 8
  %15 = load i32, i32* @S_IALLUGO, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %5, align 8
  %22 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %5, align 8
  %29 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %5, align 8
  %34 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
