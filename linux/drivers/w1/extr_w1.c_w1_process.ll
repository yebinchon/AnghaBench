; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32, i64, i32, i32 }

@w1_timeout = common dso_local global i32 0, align 4
@w1_timeout_us = common dso_local global i64 0, align 8
@W1_SEARCH = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w1_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.w1_master*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.w1_master*
  store %struct.w1_master* %7, %struct.w1_master** %3, align 8
  %8 = load i32, i32* @w1_timeout, align 4
  %9 = mul nsw i32 %8, 1000000
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @w1_timeout_us, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @usecs_to_jiffies(i64 %12)
  store i64 %13, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %67, %1
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %19 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %24 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %23, i32 0, i32 3
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %27 = load i32, i32* @W1_SEARCH, align 4
  %28 = call i32 @w1_search_process(%struct.w1_master* %26, i32 %27)
  %29 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %30 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %29, i32 0, i32 3
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %22, %17, %14
  %33 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %34 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %37 = call i32 @w1_process_callbacks(%struct.w1_master* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 1, i64* %5, align 8
  br label %43

43:                                               ; preds = %42, %39, %32
  %44 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %45 = call i32 @__set_current_state(i32 %44)
  %46 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %47 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = call i64 (...) @kthread_should_stop()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %68

52:                                               ; preds = %43
  %53 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %54 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @schedule_timeout(i64 %63)
  store i64 %64, i64* %5, align 8
  br label %67

65:                                               ; preds = %52
  %66 = call i32 (...) @schedule()
  br label %67

67:                                               ; preds = %65, %62
  br label %14

68:                                               ; preds = %51
  %69 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %70 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %69, i32 0, i32 0
  %71 = call i32 @atomic_dec(i32* %70)
  ret i32 0
}

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w1_search_process(%struct.w1_master*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @w1_process_callbacks(%struct.w1_master*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
