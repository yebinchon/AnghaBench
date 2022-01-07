; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_recovery_work_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_recovery_work_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@ccw_bus_type = common dso_local global i32 0, align 4
@recovery_check = common dso_local global i32 0, align 4
@recovery_lock = common dso_local global i32 0, align 4
@recovery_timer = common dso_local global i32 0, align 4
@recovery_phase = common dso_local global i32 0, align 4
@recovery_delay = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"recovery: end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @recovery_work_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recovery_work_func(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @recovery_check, align 4
  %5 = call i32 @bus_for_each_dev(i32* @ccw_bus_type, i32* null, i32* %3, i32 %4)
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = call i32 @spin_lock_irq(i32* @recovery_lock)
  %10 = call i32 @timer_pending(i32* @recovery_timer)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @recovery_phase, align 4
  %14 = load i32*, i32** @recovery_delay, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @recovery_phase, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @recovery_phase, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i32*, i32** @recovery_delay, align 8
  %24 = load i32, i32* @recovery_phase, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %22, %30
  %32 = call i32 @mod_timer(i32* @recovery_timer, i64 %31)
  br label %33

33:                                               ; preds = %21, %8
  %34 = call i32 @spin_unlock_irq(i32* @recovery_lock)
  br label %37

35:                                               ; preds = %1
  %36 = call i32 @CIO_MSG_EVENT(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %33
  ret void
}

declare dso_local i32 @bus_for_each_dev(i32*, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
