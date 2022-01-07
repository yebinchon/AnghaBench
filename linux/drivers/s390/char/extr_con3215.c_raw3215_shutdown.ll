; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i32, i32, i32, i32*, i32* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@RAW3215_FIXED = common dso_local global i32 0, align 4
@RAW3215_WORKING = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_shutdown(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  %3 = alloca i64, align 8
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %8 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %7, i32 0, i32 2
  %9 = call i32 @tty_port_initialized(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %13 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RAW3215_FIXED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  br label %76

19:                                               ; preds = %11
  %20 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %21 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_ccwdev_lock(i32 %22)
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %27 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RAW3215_WORKING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %19
  %33 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %34 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %39 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %69

42:                                               ; preds = %37, %32, %19
  %43 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %44 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %43, i32 0, i32 3
  %45 = call i32 @add_wait_queue(i32* %44, i32* @wait)
  %46 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %47 = call i32 @set_current_state(i32 %46)
  %48 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %49 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get_ccwdev_lock(i32 %50)
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32 %51, i64 %52)
  %54 = call i32 (...) @schedule()
  %55 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %56 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @get_ccwdev_lock(i32 %57)
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @spin_lock_irqsave(i32 %58, i64 %59)
  %61 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %62 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %61, i32 0, i32 3
  %63 = call i32 @remove_wait_queue(i32* %62, i32* @wait)
  %64 = load i32, i32* @TASK_RUNNING, align 4
  %65 = call i32 @set_current_state(i32 %64)
  %66 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %67 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %66, i32 0, i32 2
  %68 = call i32 @tty_port_set_initialized(i32* %67, i32 1)
  br label %69

69:                                               ; preds = %42, %37
  %70 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %71 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @get_ccwdev_lock(i32 %72)
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %69, %18
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @tty_port_initialized(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @tty_port_set_initialized(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
