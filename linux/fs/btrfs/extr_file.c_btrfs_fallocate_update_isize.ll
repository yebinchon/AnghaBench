; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_fallocate_update_isize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_fallocate_update_isize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32)* @btrfs_fallocate_update_isize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_fallocate_update_isize(%struct.inode* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i64 @i_size_read(%struct.inode* %22)
  %24 = icmp sle i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  br label %60

26:                                               ; preds = %20
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %28 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %27, i32 1)
  store %struct.btrfs_trans_handle* %28, %struct.btrfs_trans_handle** %8, align 8
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %30 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %33)
  store i32 %34, i32* %4, align 4
  br label %60

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call i32 @current_time(%struct.inode* %36)
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @i_size_write(%struct.inode* %40, i64 %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @btrfs_ordered_update_i_size(%struct.inode* %43, i64 %44, i32* null)
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %46, %struct.btrfs_root* %47, %struct.inode* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %51 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* %10, align 4
  br label %58

56:                                               ; preds = %35
  %57 = load i32, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %32, %25
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_ordered_update_i_size(%struct.inode*, i64, i32*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
