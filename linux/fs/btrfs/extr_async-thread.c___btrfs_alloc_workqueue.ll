; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c___btrfs_alloc_workqueue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c___btrfs_alloc_workqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__btrfs_workqueue = type { i32, i32, i32, i32, i32, i32, i8*, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DFT_THRESHOLD = common dso_local global i32 0, align 4
@NO_THRESHOLD = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"btrfs-%s-high\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"btrfs-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.__btrfs_workqueue* (%struct.btrfs_fs_info*, i8*, i32, i32, i32)* @__btrfs_alloc_workqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.__btrfs_workqueue* @__btrfs_alloc_workqueue(%struct.btrfs_fs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.__btrfs_workqueue*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.__btrfs_workqueue*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.__btrfs_workqueue* @kzalloc(i32 48, i32 %13)
  store %struct.__btrfs_workqueue* %14, %struct.__btrfs_workqueue** %12, align 8
  %15 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %16 = icmp ne %struct.__btrfs_workqueue* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.__btrfs_workqueue* null, %struct.__btrfs_workqueue** %6, align 8
  br label %97

18:                                               ; preds = %5
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %20 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %21 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %20, i32 0, i32 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %24 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %26 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %25, i32 0, i32 7
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @DFT_THRESHOLD, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @DFT_THRESHOLD, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %39 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @NO_THRESHOLD, align 4
  %41 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %42 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %49

43:                                               ; preds = %32
  %44 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %45 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %48 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %36
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @WQ_HIGHPRI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %57 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i8* %59)
  %61 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %62 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  br label %72

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %66 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i8* %68)
  %70 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %71 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %63, %54
  %73 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %74 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %79 = call i32 @kfree(%struct.__btrfs_workqueue* %78)
  store %struct.__btrfs_workqueue* null, %struct.__btrfs_workqueue** %6, align 8
  br label %97

80:                                               ; preds = %72
  %81 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %82 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %81, i32 0, i32 5
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %85 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %84, i32 0, i32 4
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %88 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %87, i32 0, i32 3
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @WQ_HIGHPRI, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @trace_btrfs_workqueue_alloc(%struct.__btrfs_workqueue* %90, i8* %91, i32 %94)
  %96 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %12, align 8
  store %struct.__btrfs_workqueue* %96, %struct.__btrfs_workqueue** %6, align 8
  br label %97

97:                                               ; preds = %80, %77, %17
  %98 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %6, align 8
  ret %struct.__btrfs_workqueue* %98
}

declare dso_local %struct.__btrfs_workqueue* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @alloc_workqueue(i8*, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.__btrfs_workqueue*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @trace_btrfs_workqueue_alloc(%struct.__btrfs_workqueue*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
