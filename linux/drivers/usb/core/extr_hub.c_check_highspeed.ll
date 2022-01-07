; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_check_highspeed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_check_highspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32*, i64 }
%struct.usb_device = type { i32, i32 }
%struct.usb_qualifier_descriptor = type { i32 }

@USB_QUIRK_DEVICE_QUALIFIER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_DT_DEVICE_QUALIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"not running at top speed; connect to a high speed hub\0A\00", align 1
@INDICATOR_GREEN_BLINK = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, %struct.usb_device*, i32)* @check_highspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_highspeed(%struct.usb_hub* %0, %struct.usb_device* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_qualifier_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @USB_QUIRK_DEVICE_QUALIFIER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %55

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.usb_qualifier_descriptor* @kmalloc(i32 4, i32 %17)
  store %struct.usb_qualifier_descriptor* %18, %struct.usb_qualifier_descriptor** %7, align 8
  %19 = load %struct.usb_qualifier_descriptor*, %struct.usb_qualifier_descriptor** %7, align 8
  %20 = icmp eq %struct.usb_qualifier_descriptor* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %24 = load i32, i32* @USB_DT_DEVICE_QUALIFIER, align 4
  %25 = load %struct.usb_qualifier_descriptor*, %struct.usb_qualifier_descriptor** %7, align 8
  %26 = call i32 @usb_get_descriptor(%struct.usb_device* %23, i32 %24, i32 0, %struct.usb_qualifier_descriptor* %25, i32 4)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 1
  %33 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %35 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load i32, i32* @INDICATOR_GREEN_BLINK, align 4
  %40 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %41 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %39, i32* %46, align 4
  %47 = load i32, i32* @system_power_efficient_wq, align 4
  %48 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %49 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %48, i32 0, i32 0
  %50 = call i32 @queue_delayed_work(i32 %47, i32* %49, i32 0)
  br label %51

51:                                               ; preds = %38, %30
  br label %52

52:                                               ; preds = %51, %22
  %53 = load %struct.usb_qualifier_descriptor*, %struct.usb_qualifier_descriptor** %7, align 8
  %54 = call i32 @kfree(%struct.usb_qualifier_descriptor* %53)
  br label %55

55:                                               ; preds = %52, %21, %15
  ret void
}

declare dso_local %struct.usb_qualifier_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, %struct.usb_qualifier_descriptor*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.usb_qualifier_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
