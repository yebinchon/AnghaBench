; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_dentry_safe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_dentry_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.dentry = type { i32 }
%struct.btrfs_log_ctx = type { i32 }

@LOG_INODE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_log_dentry_safe(%struct.btrfs_trans_handle* %0, %struct.dentry* %1, i32 %2, i32 %3, %struct.btrfs_log_ctx* %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_log_ctx*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.btrfs_log_ctx* %4, %struct.btrfs_log_ctx** %10, align 8
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = call %struct.dentry* @dget_parent(%struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** %11, align 8
  %15 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = call i32 @d_inode(%struct.dentry* %16)
  %18 = call i32 @BTRFS_I(i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @LOG_INODE_ALL, align 4
  %23 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %10, align 8
  %24 = call i32 @btrfs_log_inode_parent(%struct.btrfs_trans_handle* %15, i32 %18, %struct.dentry* %19, i32 %20, i32 %21, i32 %22, %struct.btrfs_log_ctx* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.dentry*, %struct.dentry** %11, align 8
  %26 = call i32 @dput(%struct.dentry* %25)
  %27 = load i32, i32* %12, align 4
  ret i32 %27
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @btrfs_log_inode_parent(%struct.btrfs_trans_handle*, i32, %struct.dentry*, i32, i32, i32, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @BTRFS_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
