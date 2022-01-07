; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_thresh_exec_hook.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_thresh_exec_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__btrfs_workqueue = type { i32, i32, i32, i32, i32, i32, i32 }

@NO_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__btrfs_workqueue*)* @thresh_exec_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thresh_exec_hook(%struct.__btrfs_workqueue* %0) #0 {
  %2 = alloca %struct.__btrfs_workqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.__btrfs_workqueue* %0, %struct.__btrfs_workqueue** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %7 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NO_THRESHOLD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %93

12:                                               ; preds = %1
  %13 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %14 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %13, i32 0, i32 6
  %15 = call i32 @atomic_dec(i32* %14)
  %16 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %17 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %16, i32 0, i32 4
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %20 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %24 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 4
  %27 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %28 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %32 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %12
  br label %79

36:                                               ; preds = %12
  %37 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %38 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  %40 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %41 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %40, i32 0, i32 6
  %42 = call i64 @atomic_read(i32* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %45 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp sgt i64 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %36
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %55 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %53, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %66 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clamp_val(i32 %64, i32 1, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %71 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %77 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %63
  br label %79

79:                                               ; preds = %78, %35
  %80 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %81 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %80, i32 0, i32 4
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %87 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %90 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @workqueue_set_max_active(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %11, %85, %79
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @workqueue_set_max_active(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
