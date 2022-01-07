; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_poll_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_poll_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_master = type { i64, i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@TASK_IDLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @siox_poll_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siox_poll_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.siox_master*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.siox_master*
  store %struct.siox_master* %7, %struct.siox_master** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %9 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %8, i32 0, i32 3
  %10 = call i32 @get_device(i32* %9)
  br label %11

11:                                               ; preds = %65, %1
  %12 = call i64 (...) @kthread_should_stop()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %16 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %15, i32 0, i32 3
  %17 = call i32 @put_device(i32* %16)
  ret i32 0

18:                                               ; preds = %11
  %19 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %20 = call i32 @siox_master_lock(%struct.siox_master* %19)
  %21 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %22 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %18
  %26 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %27 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %30 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %28, %31
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @time_is_before_eq_jiffies(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %38 = call i32 @siox_poll(%struct.siox_master* %37)
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %41 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @jiffies, align 8
  %44 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %45 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %43, %46
  %48 = sub i64 %42, %47
  store i64 %48, i64* %4, align 8
  br label %51

49:                                               ; preds = %18
  %50 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i64, i64* %4, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @TASK_IDLE, align 4
  %56 = call i32 @set_current_state(i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  %59 = call i32 @siox_master_unlock(%struct.siox_master* %58)
  %60 = load i64, i64* %4, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @schedule_timeout(i64 %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* @TASK_RUNNING, align 4
  %67 = call i32 @set_current_state(i32 %66)
  br label %11
}

declare dso_local i32 @get_device(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @siox_master_lock(%struct.siox_master*) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @siox_poll(%struct.siox_master*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @siox_master_unlock(%struct.siox_master*) #1

declare dso_local i32 @schedule_timeout(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
