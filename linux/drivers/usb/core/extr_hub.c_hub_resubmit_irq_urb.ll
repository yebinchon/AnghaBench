; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_resubmit_irq_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_resubmit_irq_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"resubmit --> %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*)* @hub_resubmit_irq_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_resubmit_irq_urb(%struct.usb_hub* %0) #0 {
  %2 = alloca %struct.usb_hub*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %2, align 8
  %5 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %6 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %10 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %15 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %14, i32 0, i32 0
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %20 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i32 @usb_submit_urb(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ESHUTDOWN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %43 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %48 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %47, i32 0, i32 1
  %49 = load i64, i64* @jiffies, align 8
  %50 = load i64, i64* @HZ, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @mod_timer(i32* %48, i64 %51)
  br label %53

53:                                               ; preds = %41, %36, %31, %26, %18
  %54 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %55 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %54, i32 0, i32 0
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %53, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
