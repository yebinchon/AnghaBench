; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_qgroup_account_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_qgroup_account_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_qgroup_inherit = type { i32 }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error while writing out transaction for qgroup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_qgroup_inherit*, i32)* @qgroup_account_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qgroup_account_snapshot(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_root* %2, %struct.btrfs_qgroup_inherit* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_qgroup_inherit*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_root* %2, %struct.btrfs_root** %9, align 8
  store %struct.btrfs_qgroup_inherit* %3, %struct.btrfs_qgroup_inherit** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 1
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %12, align 8
  %17 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 1
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %85

23:                                               ; preds = %5
  %24 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %26 = call i32 @record_root_in_trans(%struct.btrfs_trans_handle* %24, %struct.btrfs_root* %25, i32 1)
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %31 = call i32 @commit_fs_roots(%struct.btrfs_trans_handle* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %73

35:                                               ; preds = %23
  %36 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %37 = call i32 @btrfs_qgroup_account_extents(%struct.btrfs_trans_handle* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %73

41:                                               ; preds = %35
  %42 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.btrfs_qgroup_inherit*, %struct.btrfs_qgroup_inherit** %10, align 8
  %49 = call i32 @btrfs_qgroup_inherit(%struct.btrfs_trans_handle* %42, i32 %46, i32 %47, %struct.btrfs_qgroup_inherit* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %73

53:                                               ; preds = %41
  %54 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %55 = call i32 @commit_cowonly_roots(%struct.btrfs_trans_handle* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %73

59:                                               ; preds = %53
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %61 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @switch_commit_roots(i32 %62)
  %64 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %65 = call i32 @btrfs_write_and_wait_transaction(%struct.btrfs_trans_handle* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %69, i32 %70, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %59
  br label %73

73:                                               ; preds = %72, %58, %52, %40, %34
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %75 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %82 = call i32 @record_root_in_trans(%struct.btrfs_trans_handle* %80, %struct.btrfs_root* %81, i32 1)
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %22
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @record_root_in_trans(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @commit_fs_roots(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_qgroup_account_extents(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_qgroup_inherit(%struct.btrfs_trans_handle*, i32, i32, %struct.btrfs_qgroup_inherit*) #1

declare dso_local i32 @commit_cowonly_roots(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @switch_commit_roots(i32) #1

declare dso_local i32 @btrfs_write_and_wait_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
