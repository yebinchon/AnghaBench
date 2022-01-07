; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_reap_as.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_reap_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async = type { i32 }
%struct.usb_dev_state = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.async* (%struct.usb_dev_state*)* @reap_as to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.async* @reap_as(%struct.usb_dev_state* %0) #0 {
  %2 = alloca %struct.usb_dev_state*, align 8
  %3 = alloca %struct.async*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_dev_state* %0, %struct.usb_dev_state** %2, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @DECLARE_WAITQUEUE(i32 %5, i32 %6)
  store %struct.async* null, %struct.async** %3, align 8
  %8 = load %struct.usb_dev_state*, %struct.usb_dev_state** %2, align 8
  %9 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %8, i32 0, i32 1
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  %11 = load %struct.usb_dev_state*, %struct.usb_dev_state** %2, align 8
  %12 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %11, i32 0, i32 0
  %13 = call i32 @add_wait_queue(i32* %12, i32* @wait)
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %16 = call i32 @__set_current_state(i32 %15)
  %17 = load %struct.usb_dev_state*, %struct.usb_dev_state** %2, align 8
  %18 = call %struct.async* @async_getcompleted(%struct.usb_dev_state* %17)
  store %struct.async* %18, %struct.async** %3, align 8
  %19 = load %struct.async*, %struct.async** %3, align 8
  %20 = icmp ne %struct.async* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load %struct.usb_dev_state*, %struct.usb_dev_state** %2, align 8
  %23 = call i32 @connected(%struct.usb_dev_state* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %14
  br label %37

26:                                               ; preds = %21
  %27 = load i32, i32* @current, align 4
  %28 = call i64 @signal_pending(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %37

31:                                               ; preds = %26
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = call i32 @usb_unlock_device(%struct.usb_device* %32)
  %34 = call i32 (...) @schedule()
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = call i32 @usb_lock_device(%struct.usb_device* %35)
  br label %14

37:                                               ; preds = %30, %25
  %38 = load %struct.usb_dev_state*, %struct.usb_dev_state** %2, align 8
  %39 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %38, i32 0, i32 0
  %40 = call i32 @remove_wait_queue(i32* %39, i32* @wait)
  %41 = load i32, i32* @TASK_RUNNING, align 4
  %42 = call i32 @set_current_state(i32 %41)
  %43 = load %struct.async*, %struct.async** %3, align 8
  ret %struct.async* %43
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local %struct.async* @async_getcompleted(%struct.usb_dev_state*) #1

declare dso_local i32 @connected(%struct.usb_dev_state*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
