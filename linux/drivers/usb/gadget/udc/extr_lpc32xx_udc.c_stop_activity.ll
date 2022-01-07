; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_stop_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_stop_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, %struct.TYPE_2__, %struct.lpc32xx_ep*, i64, %struct.usb_gadget_driver* }
%struct.TYPE_2__ = type { i64 }
%struct.lpc32xx_ep = type { i32 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_2__*)* }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @stop_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_activity(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpc32xx_ep*, align 8
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %6 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %6, i32 0, i32 4
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %7, align 8
  store %struct.usb_gadget_driver* %8, %struct.usb_gadget_driver** %3, align 8
  %9 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %3, align 8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %18 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %19 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %38, %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NUM_ENDPOINTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %29 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %28, i32 0, i32 2
  %30 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %30, i64 %32
  store %struct.lpc32xx_ep* %33, %struct.lpc32xx_ep** %5, align 8
  %34 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %5, align 8
  %35 = load i32, i32* @ESHUTDOWN, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @nuke(%struct.lpc32xx_ep* %34, i32 %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %43 = icmp ne %struct.usb_gadget_driver* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %46 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %49 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %49, align 8
  %51 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %52 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %51, i32 0, i32 1
  %53 = call i32 %50(%struct.TYPE_2__* %52)
  %54 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %55 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %54, i32 0, i32 0
  %56 = call i32 @spin_lock(i32* %55)
  br label %57

57:                                               ; preds = %44, %41
  %58 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %59 = call i32 @isp1301_pullup_enable(%struct.lpc32xx_udc* %58, i32 0, i32 0)
  %60 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %61 = call i32 @udc_disable(%struct.lpc32xx_udc* %60)
  %62 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %63 = call i32 @udc_reinit(%struct.lpc32xx_udc* %62)
  ret void
}

declare dso_local i32 @nuke(%struct.lpc32xx_ep*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @isp1301_pullup_enable(%struct.lpc32xx_udc*, i32, i32) #1

declare dso_local i32 @udc_disable(%struct.lpc32xx_udc*) #1

declare dso_local i32 @udc_reinit(%struct.lpc32xx_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
