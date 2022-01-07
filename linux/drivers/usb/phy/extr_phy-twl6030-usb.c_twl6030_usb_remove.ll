; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_usb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_usb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.twl6030_usb = type { i32, i32, i32, i32, i32 }

@TWL6030_USBOTG_INT_MASK = common dso_local global i32 0, align 4
@REG_INT_MSK_LINE_C = common dso_local global i32 0, align 4
@REG_INT_MSK_STS_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl6030_usb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_usb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.twl6030_usb*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.twl6030_usb* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.twl6030_usb* %5, %struct.twl6030_usb** %3, align 8
  %6 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %7 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %6, i32 0, i32 4
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load i32, i32* @TWL6030_USBOTG_INT_MASK, align 4
  %10 = load i32, i32* @REG_INT_MSK_LINE_C, align 4
  %11 = call i32 @twl6030_interrupt_mask(i32 %9, i32 %10)
  %12 = load i32, i32* @TWL6030_USBOTG_INT_MASK, align 4
  %13 = load i32, i32* @REG_INT_MSK_STS_C, align 4
  %14 = call i32 @twl6030_interrupt_mask(i32 %12, i32 %13)
  %15 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %16 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.twl6030_usb* %18)
  %20 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %21 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.twl6030_usb* %23)
  %25 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %26 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regulator_put(i32 %27)
  %29 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %30 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %29, i32 0, i32 0
  %31 = call i32 @cancel_work_sync(i32* %30)
  ret i32 0
}

declare dso_local %struct.twl6030_usb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @twl6030_interrupt_mask(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.twl6030_usb*) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
