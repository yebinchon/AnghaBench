; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_alloc_vudc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_alloc_vudc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vudc_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GADGET_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vudc_device* @alloc_vudc_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vudc_device*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.vudc_device* null, %struct.vudc_device** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.vudc_device* @kzalloc(i32 8, i32 %4)
  store %struct.vudc_device* %5, %struct.vudc_device** %3, align 8
  %6 = load %struct.vudc_device*, %struct.vudc_device** %3, align 8
  %7 = icmp ne %struct.vudc_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.vudc_device*, %struct.vudc_device** %3, align 8
  %11 = getelementptr inbounds %struct.vudc_device, %struct.vudc_device* %10, i32 0, i32 1
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load i32, i32* @GADGET_NAME, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @platform_device_alloc(i32 %13, i32 %14)
  %16 = load %struct.vudc_device*, %struct.vudc_device** %3, align 8
  %17 = getelementptr inbounds %struct.vudc_device, %struct.vudc_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.vudc_device*, %struct.vudc_device** %3, align 8
  %19 = getelementptr inbounds %struct.vudc_device, %struct.vudc_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %9
  %23 = load %struct.vudc_device*, %struct.vudc_device** %3, align 8
  %24 = call i32 @kfree(%struct.vudc_device* %23)
  store %struct.vudc_device* null, %struct.vudc_device** %3, align 8
  br label %25

25:                                               ; preds = %22, %9
  br label %26

26:                                               ; preds = %25, %8
  %27 = load %struct.vudc_device*, %struct.vudc_device** %3, align 8
  ret %struct.vudc_device* %27
}

declare dso_local %struct.vudc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @platform_device_alloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.vudc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
