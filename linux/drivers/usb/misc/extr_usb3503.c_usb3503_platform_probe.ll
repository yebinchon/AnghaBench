; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb3503.c_usb3503_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb3503.c_usb3503_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb3503 = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usb3503_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3503_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb3503*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.usb3503* @devm_kzalloc(i32* %6, i32 8, i32 %7)
  store %struct.usb3503* %8, %struct.usb3503** %4, align 8
  %9 = load %struct.usb3503*, %struct.usb3503** %4, align 8
  %10 = icmp ne %struct.usb3503* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.usb3503*, %struct.usb3503** %4, align 8
  %18 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.usb3503*, %struct.usb3503** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.usb3503* %20)
  %22 = load %struct.usb3503*, %struct.usb3503** %4, align 8
  %23 = call i32 @usb3503_probe(%struct.usb3503* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.usb3503* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb3503*) #1

declare dso_local i32 @usb3503_probe(%struct.usb3503*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
