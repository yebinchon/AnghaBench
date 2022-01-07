; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vudc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vudc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vudc = type { %struct.TYPE_4__, %struct.platform_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GADGET_NAME = common dso_local global i32 0, align 4
@vgadget_ops = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vudc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vudc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.vudc* @kzalloc(i32 40, i32 %8)
  store %struct.vudc* %9, %struct.vudc** %4, align 8
  %10 = load %struct.vudc*, %struct.vudc** %4, align 8
  %11 = icmp ne %struct.vudc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %59

13:                                               ; preds = %1
  %14 = load i32, i32* @GADGET_NAME, align 4
  %15 = load %struct.vudc*, %struct.vudc** %4, align 8
  %16 = getelementptr inbounds %struct.vudc, %struct.vudc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 8
  %18 = load %struct.vudc*, %struct.vudc** %4, align 8
  %19 = getelementptr inbounds %struct.vudc, %struct.vudc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32* @vgadget_ops, i32** %20, align 8
  %21 = load i32, i32* @USB_SPEED_HIGH, align 4
  %22 = load %struct.vudc*, %struct.vudc** %4, align 8
  %23 = getelementptr inbounds %struct.vudc, %struct.vudc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.vudc*, %struct.vudc** %4, align 8
  %28 = getelementptr inbounds %struct.vudc, %struct.vudc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* %26, i32** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.vudc*, %struct.vudc** %4, align 8
  %33 = getelementptr inbounds %struct.vudc, %struct.vudc* %32, i32 0, i32 1
  store %struct.platform_device* %31, %struct.platform_device** %33, align 8
  %34 = load %struct.vudc*, %struct.vudc** %4, align 8
  %35 = call i32 @init_vudc_hw(%struct.vudc* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %13
  br label %56

39:                                               ; preds = %13
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.vudc*, %struct.vudc** %4, align 8
  %43 = getelementptr inbounds %struct.vudc, %struct.vudc* %42, i32 0, i32 0
  %44 = call i32 @usb_add_gadget_udc(i32* %41, %struct.TYPE_4__* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %53

48:                                               ; preds = %39
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.vudc*, %struct.vudc** %4, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.vudc* %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %61

53:                                               ; preds = %47
  %54 = load %struct.vudc*, %struct.vudc** %4, align 8
  %55 = call i32 @cleanup_vudc_hw(%struct.vudc* %54)
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.vudc*, %struct.vudc** %4, align 8
  %58 = call i32 @kfree(%struct.vudc* %57)
  br label %59

59:                                               ; preds = %56, %12
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.vudc* @kzalloc(i32, i32) #1

declare dso_local i32 @init_vudc_hw(%struct.vudc*) #1

declare dso_local i32 @usb_add_gadget_udc(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vudc*) #1

declare dso_local i32 @cleanup_vudc_hw(%struct.vudc*) #1

declare dso_local i32 @kfree(%struct.vudc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
