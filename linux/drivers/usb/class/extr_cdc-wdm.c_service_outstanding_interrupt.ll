; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_service_outstanding_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_service_outstanding_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wdm_device = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WDM_RESPONDING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"usb_submit_urb failed with result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wdm_device*)* @service_outstanding_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_outstanding_interrupt(%struct.wdm_device* %0) #0 {
  %2 = alloca %struct.wdm_device*, align 8
  %3 = alloca i32, align 4
  store %struct.wdm_device* %0, %struct.wdm_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %5 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %10 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8, %1
  br label %47

15:                                               ; preds = %8
  %16 = load i32, i32* @WDM_RESPONDING, align 4
  %17 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %18 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %21 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %20, i32 0, i32 3
  %22 = call i32 @spin_unlock_irq(i32* %21)
  %23 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %24 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @usb_submit_urb(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %29 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %28, i32 0, i32 3
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %15
  %34 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %35 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @WDM_RESPONDING, align 4
  %41 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %42 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %41, i32 0, i32 1
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  %44 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %45 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %33, %15
  br label %47

47:                                               ; preds = %46, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
