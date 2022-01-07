; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_ep0_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_ep0_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i64 0, align 8
@USB_DIR_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_ep0_reinit(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %3 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %4 = load i64, i64* @USB_DIR_IN, align 8
  %5 = add nsw i64 0, %4
  %6 = call i32 @usb_disable_endpoint(%struct.usb_device* %3, i64 %5, i32 1)
  %7 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %8 = load i64, i64* @USB_DIR_OUT, align 8
  %9 = add nsw i64 0, %8
  %10 = call i32 @usb_disable_endpoint(%struct.usb_device* %7, i64 %9, i32 1)
  %11 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = call i32 @usb_enable_endpoint(%struct.usb_device* %11, i32* %13, i32 1)
  ret void
}

declare dso_local i32 @usb_disable_endpoint(%struct.usb_device*, i64, i32) #1

declare dso_local i32 @usb_enable_endpoint(%struct.usb_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
