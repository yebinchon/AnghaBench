; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_defrag_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_defrag_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { i32 }

@BTRFS_ROOT_DEFRAG_RUNNING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"defrag_root cancelled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_defrag_root(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 1
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %4, align 8
  %10 = load i32, i32* @BTRFS_ROOT_DEFRAG_RUNNING, align 4
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 0
  %13 = call i64 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %53
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %19 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %18, i32 0)
  store %struct.btrfs_trans_handle* %19, %struct.btrfs_trans_handle** %5, align 8
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %21 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %24)
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %29 = call i32 @btrfs_defrag_leaves(%struct.btrfs_trans_handle* %27, %struct.btrfs_root* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %31 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %30)
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %33 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %32)
  %34 = call i32 (...) @cond_resched()
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %36 = call i64 @btrfs_fs_closing(%struct.btrfs_fs_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %26
  br label %54

44:                                               ; preds = %38
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %46 = call i64 @btrfs_defrag_cancelled(%struct.btrfs_fs_info* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %50 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %54

53:                                               ; preds = %44
  br label %17

54:                                               ; preds = %48, %43
  %55 = load i32, i32* @BTRFS_ROOT_DEFRAG_RUNNING, align 4
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %57 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %56, i32 0, i32 0
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %23, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_defrag_leaves(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @btrfs_fs_closing(%struct.btrfs_fs_info*) #1

declare dso_local i64 @btrfs_defrag_cancelled(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
