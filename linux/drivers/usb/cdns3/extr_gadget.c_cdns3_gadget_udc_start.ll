; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32 }
%struct.cdns3_device = type { i32, i32, %struct.TYPE_2__*, %struct.usb_gadget_driver* }
%struct.TYPE_2__ = type { i32 }

@USB_CONF_SFORCE_FS = common dso_local global i32 0, align 4
@USB_CONF_USB3DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid maximum_speed parameter %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @cdns3_gadget_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_gadget_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %9 = call %struct.cdns3_device* @gadget_to_cdns3_device(%struct.usb_gadget* %8)
  store %struct.cdns3_device* %9, %struct.cdns3_device** %5, align 8
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %11 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %14 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %18 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %19 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %18, i32 0, i32 3
  store %struct.usb_gadget_driver* %17, %struct.usb_gadget_driver** %19, align 8
  %20 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %21 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %24 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @min(i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %49 [
    i32 131, label %28
    i32 130, label %41
    i32 129, label %48
    i32 128, label %55
  ]

28:                                               ; preds = %2
  %29 = load i32, i32* @USB_CONF_SFORCE_FS, align 4
  %30 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %31 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @writel(i32 %29, i32* %33)
  %35 = load i32, i32* @USB_CONF_USB3DIS, align 4
  %36 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %37 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @writel(i32 %35, i32* %39)
  br label %56

41:                                               ; preds = %2
  %42 = load i32, i32* @USB_CONF_USB3DIS, align 4
  %43 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %44 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @writel(i32 %42, i32* %46)
  br label %56

48:                                               ; preds = %2
  br label %56

49:                                               ; preds = %2
  %50 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %51 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %2, %49
  store i32 129, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %48, %41, %28
  %57 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %58 = call i32 @cdns3_gadget_config(%struct.cdns3_device* %57)
  %59 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %60 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %59, i32 0, i32 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret i32 0
}

declare dso_local %struct.cdns3_device* @gadget_to_cdns3_device(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cdns3_gadget_config(%struct.cdns3_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
