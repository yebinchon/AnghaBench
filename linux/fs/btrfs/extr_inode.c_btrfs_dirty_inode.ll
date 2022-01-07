; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.btrfs_root* }

@BTRFS_INODE_DUMMY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @btrfs_dirty_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_dirty_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %10)
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %5, align 8
  %16 = load i32, i32* @BTRFS_INODE_DUMMY, align 4
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

23:                                               ; preds = %1
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %25 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %24)
  store %struct.btrfs_trans_handle* %25, %struct.btrfs_trans_handle** %6, align 8
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %27 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %30)
  store i32 %31, i32* %2, align 4
  br label %73

32:                                               ; preds = %23
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %33, %struct.btrfs_root* %34, %struct.inode* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %46 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %45)
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %48 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %47, i32 1)
  store %struct.btrfs_trans_handle* %48, %struct.btrfs_trans_handle** %6, align 8
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %50 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %54 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %53)
  store i32 %54, i32* %2, align 4
  br label %73

55:                                               ; preds = %44
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %56, %struct.btrfs_root* %57, %struct.inode* %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %39, %32
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %62 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %61)
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %70 = call i32 @btrfs_balance_delayed_items(%struct.btrfs_fs_info* %69)
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %52, %29, %22
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_balance_delayed_items(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
