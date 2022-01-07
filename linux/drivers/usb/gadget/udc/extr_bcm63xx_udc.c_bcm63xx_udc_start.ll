; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.bcm63xx_udc = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.usb_gadget_driver* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @bcm63xx_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.bcm63xx_udc*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %9 = call %struct.bcm63xx_udc* @gadget_to_udc(%struct.usb_gadget* %8)
  store %struct.bcm63xx_udc* %9, %struct.bcm63xx_udc** %6, align 8
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %11 = icmp ne %struct.usb_gadget_driver* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %14 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_SPEED_HIGH, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %20 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %12, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %18
  %27 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %28 = icmp ne %struct.bcm63xx_udc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %76

32:                                               ; preds = %26
  %33 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %34 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %33, i32 0, i32 3
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %34, align 8
  %36 = icmp ne %struct.usb_gadget_driver* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %32
  %41 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %42 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %46 = call i32 @set_clocks(%struct.bcm63xx_udc* %45, i32 1)
  %47 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %48 = call i32 @bcm63xx_fifo_setup(%struct.bcm63xx_udc* %47)
  %49 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %50 = call i32 @bcm63xx_ep_init(%struct.bcm63xx_udc* %49)
  %51 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %52 = call i32 @bcm63xx_ep_setup(%struct.bcm63xx_udc* %51)
  %53 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %54 = call i32 @bcm63xx_fifo_reset(%struct.bcm63xx_udc* %53)
  %55 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %56 = call i32 @bcm63xx_select_phy_mode(%struct.bcm63xx_udc* %55, i32 1)
  %57 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %58 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %59 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %58, i32 0, i32 3
  store %struct.usb_gadget_driver* %57, %struct.usb_gadget_driver** %59, align 8
  %60 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %61 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %64 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %69 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %73 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %72, i32 0, i32 0
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %40, %37, %29, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.bcm63xx_udc* @gadget_to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_clocks(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @bcm63xx_fifo_setup(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_ep_init(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_ep_setup(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_fifo_reset(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_select_phy_mode(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
