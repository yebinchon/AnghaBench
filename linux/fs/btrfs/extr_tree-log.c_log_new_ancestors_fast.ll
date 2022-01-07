; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_log_new_ancestors_fast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_log_new_ancestors_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode = type { i64, %struct.btrfs_root*, %struct.TYPE_2__ }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i64 }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.super_block* }
%struct.btrfs_log_ctx = type { i32 }

@LOG_INODE_EXISTS = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.dentry*, %struct.btrfs_log_ctx*)* @log_new_ancestors_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_new_ancestors_fast(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1, %struct.dentry* %2, %struct.btrfs_log_ctx* %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.btrfs_log_ctx*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.btrfs_log_ctx* %3, %struct.btrfs_log_ctx** %8, align 8
  %14 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %15 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %14, i32 0, i32 1
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  store %struct.btrfs_root* %16, %struct.btrfs_root** %9, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 0
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %10, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %20 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %12, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %4, %73
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = icmp ne %struct.dentry* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = call i64 @d_really_is_negative(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load %struct.super_block*, %struct.super_block** %12, align 8
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  %36 = icmp ne %struct.super_block* %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %27, %24
  br label %79

38:                                               ; preds = %31
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = call i32 @d_inode(%struct.dentry* %39)
  %41 = call %struct.btrfs_inode* @BTRFS_I(i32 %40)
  store %struct.btrfs_inode* %41, %struct.btrfs_inode** %6, align 8
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %43 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %43, i32 0, i32 1
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %44, align 8
  %46 = icmp ne %struct.btrfs_root* %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %79

48:                                               ; preds = %38
  %49 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %59 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %60 = load i32, i32* @LOG_INODE_EXISTS, align 4
  %61 = load i32, i32* @LLONG_MAX, align 4
  %62 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %8, align 8
  %63 = call i32 @btrfs_log_inode(%struct.btrfs_trans_handle* %57, %struct.btrfs_root* %58, %struct.btrfs_inode* %59, i32 %60, i32 0, i32 %61, %struct.btrfs_log_ctx* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %79

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = call i64 @IS_ROOT(%struct.dentry* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %79

73:                                               ; preds = %68
  %74 = load %struct.dentry*, %struct.dentry** %7, align 8
  %75 = call %struct.dentry* @dget_parent(%struct.dentry* %74)
  store %struct.dentry* %75, %struct.dentry** %7, align 8
  %76 = load %struct.dentry*, %struct.dentry** %11, align 8
  %77 = call i32 @dput(%struct.dentry* %76)
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %78, %struct.dentry** %11, align 8
  br label %24

79:                                               ; preds = %72, %66, %47, %37
  %80 = load %struct.dentry*, %struct.dentry** %11, align 8
  %81 = call i32 @dput(%struct.dentry* %80)
  %82 = load i32, i32* %13, align 4
  ret i32 %82
}

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local %struct.btrfs_inode* @BTRFS_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @btrfs_log_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_inode*, i32, i32, i32, %struct.btrfs_log_ctx*) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
