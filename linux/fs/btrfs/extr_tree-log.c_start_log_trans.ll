; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_start_log_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_start_log_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i64, i32, i32, i32*, i32, i32, i32, i64, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_log_ctx = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@BTRFS_ROOT_MULTI_LOG_TASKS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_log_ctx*)* @start_log_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_log_trans(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_log_ctx* %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_log_ctx*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_log_ctx* %2, %struct.btrfs_log_ctx** %6, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %3
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %22 = call i64 @btrfs_need_log_full_commit(%struct.btrfs_trans_handle* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %122

27:                                               ; preds = %20
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @BTRFS_ROOT_MULTI_LOG_TASKS, align 4
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 6
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %56

42:                                               ; preds = %27
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* @BTRFS_ROOT_MULTI_LOG_TASKS, align 4
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %53 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %52, i32 0, i32 6
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55, %32
  br label %93

57:                                               ; preds = %3
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %59 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %62 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %68 = call i32 @btrfs_init_log_root_tree(%struct.btrfs_trans_handle* %66, %struct.btrfs_fs_info* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %57
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %71 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %122

76:                                               ; preds = %69
  %77 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %78 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %79 = call i32 @btrfs_add_log_tree(%struct.btrfs_trans_handle* %77, %struct.btrfs_root* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %122

83:                                               ; preds = %76
  %84 = load i32, i32* @BTRFS_ROOT_MULTI_LOG_TASKS, align 4
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %86 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %85, i32 0, i32 6
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %92 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %83, %56
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %95 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %94, i32 0, i32 5
  %96 = call i32 @atomic_inc(i32* %95)
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %98 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %97, i32 0, i32 4
  %99 = call i32 @atomic_inc(i32* %98)
  %100 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %6, align 8
  %101 = icmp ne %struct.btrfs_log_ctx* %100, null
  br i1 %101, label %102, label %121

102:                                              ; preds = %93
  %103 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %104 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = srem i32 %105, 2
  store i32 %106, i32* %9, align 4
  %107 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %6, align 8
  %108 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %107, i32 0, i32 1
  %109 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %110 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @list_add_tail(i32* %108, i32* %114)
  %116 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %117 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %6, align 8
  %120 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %102, %93
  br label %122

122:                                              ; preds = %121, %82, %75, %24
  %123 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %124 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %123, i32 0, i32 2
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @btrfs_need_log_full_commit(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_init_log_root_tree(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_add_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
