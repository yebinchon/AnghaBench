; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_balloon.c_balloon_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_balloon.c_balloon_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.work_struct = type { i32 }

@BP_DONE = common dso_local global i32 0, align 4
@balloon_mutex = common dso_local global i32 0, align 4
@GFP_BALLOON = common dso_local global i32 0, align 4
@totalreserve_pages = common dso_local global i64 0, align 8
@BP_EAGAIN = common dso_local global i32 0, align 4
@balloon_worker = common dso_local global i32 0, align 4
@balloon_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @balloon_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon_process(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = load i32, i32* @BP_DONE, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %59, %1
  %8 = call i32 @mutex_lock(i32* @balloon_mutex)
  %9 = call i64 (...) @current_credit()
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = call i64 (...) @balloon_is_inflated()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @increase_reservation(i64 %16)
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @reserve_additional_memory()
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %15
  br label %21

21:                                               ; preds = %20, %7
  %22 = load i64, i64* %4, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = sub nsw i64 0, %25
  %27 = call i32 (...) @si_mem_available()
  %28 = call i64 @min(i64 %26, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @GFP_BALLOON, align 4
  %31 = call i32 @decrease_reservation(i64 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BP_DONE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = sub nsw i64 0, %37
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @totalreserve_pages, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @BP_EAGAIN, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %40, %35, %24
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @update_schedule(i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = call i32 @mutex_unlock(i32* @balloon_mutex)
  %51 = call i32 (...) @cond_resched()
  br label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @BP_DONE, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  br i1 %60, label %7, label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @BP_EAGAIN, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @balloon_stats, i32 0, i32 0), align 4
  %67 = load i32, i32* @HZ, align 4
  %68 = mul nsw i32 %66, %67
  %69 = call i32 @schedule_delayed_work(i32* @balloon_worker, i32 %68)
  br label %70

70:                                               ; preds = %65, %61
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @current_credit(...) #1

declare dso_local i64 @balloon_is_inflated(...) #1

declare dso_local i32 @increase_reservation(i64) #1

declare dso_local i32 @reserve_additional_memory(...) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @si_mem_available(...) #1

declare dso_local i32 @decrease_reservation(i64, i32) #1

declare dso_local i32 @update_schedule(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
