; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_transaction_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_transaction_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32, i32, i32, i32, i32, %struct.btrfs_transaction* }
%struct.btrfs_transaction = type { i64, i64, i64 }
%struct.btrfs_trans_handle = type { i64 }

@HZ = common dso_local global i32 0, align 4
@TRANS_STATE_BLOCKED = common dso_local global i64 0, align 8
@BTRFS_FS_NEED_ASYNC_COMMIT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_FS_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @transaction_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transaction_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_transaction*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.btrfs_root*
  store %struct.btrfs_root* %12, %struct.btrfs_root** %3, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %4, align 8
  br label %16

16:                                               ; preds = %139, %1
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @HZ, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 4
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 6
  %31 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %30, align 8
  store %struct.btrfs_transaction* %31, %struct.btrfs_transaction** %6, align 8
  %32 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %33 = icmp ne %struct.btrfs_transaction* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %16
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 4
  %37 = call i32 @spin_unlock(i32* %36)
  br label %108

38:                                               ; preds = %16
  %39 = call i64 (...) @ktime_get_seconds()
  store i64 %39, i64* %8, align 8
  %40 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %41 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRANS_STATE_BLOCKED, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %38
  %46 = load i32, i32* @BTRFS_FS_NEED_ASYNC_COMMIT, align 4
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 5
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %54 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %60 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %64 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %57, %51
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %69, i32 0, i32 4
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* @HZ, align 4
  %73 = mul nsw i32 %72, 5
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %9, align 8
  br label %108

75:                                               ; preds = %57, %45, %38
  %76 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %77 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %7, align 8
  %79 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %80 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %79, i32 0, i32 4
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %83 = call %struct.btrfs_trans_handle* @btrfs_attach_transaction(%struct.btrfs_root* %82)
  store %struct.btrfs_trans_handle* %83, %struct.btrfs_trans_handle** %5, align 8
  %84 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %85 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %75
  %88 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %89 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %88)
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %87
  br label %108

95:                                               ; preds = %75
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %98 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %103 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %102)
  br label %107

104:                                              ; preds = %95
  %105 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %106 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %94, %68, %34
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %110 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @wake_up_process(i32 %111)
  %113 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %114 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %113, i32 0, i32 2
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* @BTRFS_FS_STATE_ERROR, align 4
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %118 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %117, i32 0, i32 1
  %119 = call i32 @test_bit(i32 %116, i32* %118)
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %108
  %123 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %124 = call i32 @btrfs_cleanup_transaction(%struct.btrfs_fs_info* %123)
  br label %125

125:                                              ; preds = %122, %108
  %126 = call i32 (...) @kthread_should_stop()
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %125
  %129 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %130 = call i32 @btrfs_transaction_blocked(%struct.btrfs_fs_info* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132, %128
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @schedule_timeout_interruptible(i64 %136)
  br label %138

138:                                              ; preds = %135, %132, %125
  br label %139

139:                                              ; preds = %138
  %140 = call i32 (...) @kthread_should_stop()
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  br i1 %142, label %16, label %143

143:                                              ; preds = %139
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_attach_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @btrfs_cleanup_transaction(%struct.btrfs_fs_info*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @btrfs_transaction_blocked(%struct.btrfs_fs_info*) #1

declare dso_local i32 @schedule_timeout_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
