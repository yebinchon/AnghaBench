; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_commit_transaction_async.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_commit_transaction_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { %struct.btrfs_transaction*, i32, %struct.btrfs_fs_info* }
%struct.btrfs_transaction = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_async_commit = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_async_commit = common dso_local global i32 0, align 4
@__TRANS_FREEZABLE = common dso_local global i32 0, align 4
@SB_FREEZE_FS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_commit_transaction_async(%struct.btrfs_trans_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_async_commit*, align 8
  %8 = alloca %struct.btrfs_transaction*, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %10, i32 0, i32 2
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %6, align 8
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.btrfs_async_commit* @kmalloc(i32 16, i32 %13)
  store %struct.btrfs_async_commit* %14, %struct.btrfs_async_commit** %7, align 8
  %15 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %7, align 8
  %16 = icmp ne %struct.btrfs_async_commit* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %93

20:                                               ; preds = %2
  %21 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %21, i32 0, i32 0
  %23 = load i32, i32* @do_async_commit, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_6__* @btrfs_join_transaction(i32 %27)
  %29 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %7, align 8
  %30 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %29, i32 0, i32 1
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %7, align 8
  %32 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i64 @IS_ERR(%struct.TYPE_6__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %7, align 8
  %38 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.TYPE_6__* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %7, align 8
  %42 = call i32 @kfree(%struct.btrfs_async_commit* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %93

44:                                               ; preds = %20
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %45, i32 0, i32 0
  %47 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %46, align 8
  store %struct.btrfs_transaction* %47, %struct.btrfs_transaction** %8, align 8
  %48 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %48, i32 0, i32 0
  %50 = call i32 @refcount_inc(i32* %49)
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %52 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %51)
  %53 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %7, align 8
  %54 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @__TRANS_FREEZABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %44
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %63 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SB_FREEZE_FS, align 4
  %66 = call i32 @__sb_writers_release(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %44
  %68 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %7, align 8
  %69 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %68, i32 0, i32 0
  %70 = call i32 @schedule_work(i32* %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %75 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %8, align 8
  %76 = call i32 @wait_current_trans_commit_start_and_unblock(%struct.btrfs_fs_info* %74, %struct.btrfs_transaction* %75)
  br label %81

77:                                               ; preds = %67
  %78 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %79 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %8, align 8
  %80 = call i32 @wait_current_trans_commit_start(%struct.btrfs_fs_info* %78, %struct.btrfs_transaction* %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %83, align 8
  %85 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %86 = icmp eq %struct.btrfs_trans_handle* %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %89, align 8
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %8, align 8
  %92 = call i32 @btrfs_put_transaction(%struct.btrfs_transaction* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %36, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.btrfs_async_commit* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @btrfs_join_transaction(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.btrfs_async_commit*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @__sb_writers_release(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_current_trans_commit_start_and_unblock(%struct.btrfs_fs_info*, %struct.btrfs_transaction*) #1

declare dso_local i32 @wait_current_trans_commit_start(%struct.btrfs_fs_info*, %struct.btrfs_transaction*) #1

declare dso_local i32 @btrfs_put_transaction(%struct.btrfs_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
