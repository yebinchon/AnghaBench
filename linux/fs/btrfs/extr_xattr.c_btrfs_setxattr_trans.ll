; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_xattr.c_btrfs_setxattr_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_xattr.c_btrfs_setxattr_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_setxattr_trans(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.btrfs_trans_handle*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_root* %18, %struct.btrfs_root** %12, align 8
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %20 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %19, i32 2)
  store %struct.btrfs_trans_handle* %20, %struct.btrfs_trans_handle** %13, align 8
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %22 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %26 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %25)
  store i32 %26, i32* %6, align 4
  br label %55

27:                                               ; preds = %5
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @btrfs_setxattr(%struct.btrfs_trans_handle* %28, %struct.inode* %29, i8* %30, i8* %31, i64 %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %51

38:                                               ; preds = %27
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @inode_inc_iversion(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call i32 @current_time(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %45, %struct.btrfs_root* %46, %struct.inode* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @BUG_ON(i32 %49)
  br label %51

51:                                               ; preds = %38, %37
  %52 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %53 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_setxattr(%struct.btrfs_trans_handle*, %struct.inode*, i8*, i8*, i64, i32) #1

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
