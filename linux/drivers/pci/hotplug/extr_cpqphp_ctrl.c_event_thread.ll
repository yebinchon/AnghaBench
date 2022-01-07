; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_event_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_event_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.controller* }

@.str = private unnamed_addr constant [27 x i8] c"!!!!event_thread sleeping\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@pushbutton_pending = common dso_local global i64 0, align 8
@cpqhp_ctrl_list = common dso_local global %struct.controller* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"event_thread signals exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @event_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.controller*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %1, %31
  %5 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %7 = call i32 @set_current_state(i32 %6)
  %8 = call i32 (...) @schedule()
  %9 = call i64 (...) @kthread_should_stop()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %32

12:                                               ; preds = %4
  %13 = load i64, i64* @pushbutton_pending, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @pushbutton_pending, align 8
  %17 = call i32 @cpqhp_pushbutton_thread(i64 %16)
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.controller*, %struct.controller** @cpqhp_ctrl_list, align 8
  store %struct.controller* %19, %struct.controller** %3, align 8
  br label %20

20:                                               ; preds = %26, %18
  %21 = load %struct.controller*, %struct.controller** %3, align 8
  %22 = icmp ne %struct.controller* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.controller*, %struct.controller** %3, align 8
  %25 = call i32 @interrupt_event_handler(%struct.controller* %24)
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.controller*, %struct.controller** %3, align 8
  %28 = getelementptr inbounds %struct.controller, %struct.controller* %27, i32 0, i32 0
  %29 = load %struct.controller*, %struct.controller** %28, align 8
  store %struct.controller* %29, %struct.controller** %3, align 8
  br label %20

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %15
  br label %4

32:                                               ; preds = %11
  %33 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @cpqhp_pushbutton_thread(i64) #1

declare dso_local i32 @interrupt_event_handler(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
