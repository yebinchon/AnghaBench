; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c___wusb_dev_get_by_usb_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c___wusb_dev_get_by_usb_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_dev = type { i32 }
%struct.wusbhc = type { i64 }
%struct.usb_device = type { i32 }
%struct.TYPE_2__ = type { %struct.wusb_dev* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.wusb_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @wusb_port_no_to_idx(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %18, i64 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.wusb_dev*, %struct.wusb_dev** %21, align 8
  store %struct.wusb_dev* %22, %struct.wusb_dev** %5, align 8
  %23 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %24 = icmp ne %struct.wusb_dev* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %27 = call i32 @wusb_dev_get(%struct.wusb_dev* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  ret %struct.wusb_dev* %29
}

declare dso_local i64 @wusb_port_no_to_idx(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc*, i64) #1

declare dso_local i32 @wusb_dev_get(%struct.wusb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
