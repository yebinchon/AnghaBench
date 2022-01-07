; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_reset_gadget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_reset_gadget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { i32, %struct.TYPE_2__, %struct.at91_ep*, i64, %struct.usb_gadget_driver* }
%struct.TYPE_2__ = type { i64 }
%struct.at91_ep = type { i32 }
%struct.usb_gadget_driver = type { i32 }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_udc*)* @reset_gadget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_gadget(%struct.at91_udc* %0) #0 {
  %2 = alloca %struct.at91_udc*, align 8
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.at91_ep*, align 8
  store %struct.at91_udc* %0, %struct.at91_udc** %2, align 8
  %6 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %7 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %6, i32 0, i32 4
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %7, align 8
  store %struct.usb_gadget_driver* %8, %struct.usb_gadget_driver** %3, align 8
  %9 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %10 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %9, i32 0, i32 1
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
  %18 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %19 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %22 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %40, %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NUM_ENDPOINTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %29 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %28, i32 0, i32 2
  %30 = load %struct.at91_ep*, %struct.at91_ep** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %30, i64 %32
  store %struct.at91_ep* %33, %struct.at91_ep** %5, align 8
  %34 = load %struct.at91_ep*, %struct.at91_ep** %5, align 8
  %35 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.at91_ep*, %struct.at91_ep** %5, align 8
  %37 = load i32, i32* @ESHUTDOWN, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @nuke(%struct.at91_ep* %36, i32 %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %45 = icmp ne %struct.usb_gadget_driver* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %48 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %51 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %50, i32 0, i32 1
  %52 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %53 = call i32 @usb_gadget_udc_reset(%struct.TYPE_2__* %51, %struct.usb_gadget_driver* %52)
  %54 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %55 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %54, i32 0, i32 0
  %56 = call i32 @spin_lock(i32* %55)
  br label %57

57:                                               ; preds = %46, %43
  %58 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %59 = call i32 @udc_reinit(%struct.at91_udc* %58)
  ret void
}

declare dso_local i32 @nuke(%struct.at91_ep*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_udc_reset(%struct.TYPE_2__*, %struct.usb_gadget_driver*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @udc_reinit(%struct.at91_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
