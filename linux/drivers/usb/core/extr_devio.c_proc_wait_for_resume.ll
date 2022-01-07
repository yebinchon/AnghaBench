; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_proc_wait_for_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_proc_wait_for_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dev_state = type { i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dev_state*)* @proc_wait_for_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_wait_for_resume(%struct.usb_dev_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_dev_state*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_dev_state* %0, %struct.usb_dev_state** %3, align 8
  %5 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %6 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @usb_unlock_device(i32 %7)
  %9 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %10 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %13 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @READ_ONCE(i32 %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @wait_event_interruptible(i32 %11, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %20 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_lock_device(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EINTR, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.usb_dev_state*, %struct.usb_dev_state** %3, align 8
  %30 = call i32 @proc_forbid_suspend(%struct.usb_dev_state* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @usb_unlock_device(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @usb_lock_device(i32) #1

declare dso_local i32 @proc_forbid_suspend(%struct.usb_dev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
