; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_xattr.c_btrfs_xattr_handler_set_prop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_xattr.c_btrfs_xattr_handler_set_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @btrfs_xattr_handler_set_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_xattr_handler_set_prop(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.btrfs_trans_handle*, align 8
  %18 = alloca %struct.btrfs_root*, align 8
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.inode*, %struct.inode** %11, align 8
  %20 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %18, align 8
  %23 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i8* @xattr_full_name(%struct.xattr_handler* %23, i8* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @btrfs_validate_prop(i8* %26, i8* %27, i64 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %8, align 4
  br label %70

34:                                               ; preds = %7
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %36 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %35, i32 2)
  store %struct.btrfs_trans_handle* %36, %struct.btrfs_trans_handle** %17, align 8
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %38 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %42 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %41)
  store i32 %42, i32* %8, align 4
  br label %70

43:                                               ; preds = %34
  %44 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @btrfs_set_prop(%struct.btrfs_trans_handle* %44, %struct.inode* %45, i8* %46, i8* %47, i64 %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %43
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call i32 @inode_inc_iversion(%struct.inode* %54)
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = call i32 @current_time(%struct.inode* %56)
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %60, %struct.btrfs_root* %61, %struct.inode* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @BUG_ON(i32 %64)
  br label %66

66:                                               ; preds = %53, %43
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %68 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %67)
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %40, %32
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i8* @xattr_full_name(%struct.xattr_handler*, i8*) #1

declare dso_local i32 @btrfs_validate_prop(i8*, i8*, i64) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_set_prop(%struct.btrfs_trans_handle*, %struct.inode*, i8*, i8*, i64, i32) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
