; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_....wusbhc.h_wusb_dev_get_by_usb_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_....wusbhc.h_wusb_dev_get_by_usb_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_dev = type { i32 }
%struct.usb_device = type { i32 }
%struct.wusbhc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wusb_dev* (%struct.usb_device*)* @wusb_dev_get_by_usb_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wusb_dev* @wusb_dev_get_by_usb_dev(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.wusb_dev*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.wusb_dev*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = call %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device* %6)
  store %struct.wusbhc* %7, %struct.wusbhc** %4, align 8
  %8 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %9 = icmp eq %struct.wusbhc* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.wusb_dev* null, %struct.wusb_dev** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = call %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc* %15, %struct.usb_device* %16)
  store %struct.wusb_dev* %17, %struct.wusb_dev** %5, align 8
  %18 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %19 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %22 = call i32 @wusbhc_put(%struct.wusbhc* %21)
  %23 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  store %struct.wusb_dev* %23, %struct.wusb_dev** %2, align 8
  br label %24

24:                                               ; preds = %11, %10
  %25 = load %struct.wusb_dev*, %struct.wusb_dev** %2, align 8
  ret %struct.wusb_dev* %25
}

declare dso_local %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc*, %struct.usb_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wusbhc_put(%struct.wusbhc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
