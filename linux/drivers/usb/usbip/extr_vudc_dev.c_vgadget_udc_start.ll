; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vgadget_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vgadget_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32 }
%struct.vudc = type { i32, i64, i64, i64, %struct.usb_gadget_driver* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @vgadget_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgadget_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.vudc*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %8 = call %struct.vudc* @usb_gadget_to_vudc(%struct.usb_gadget* %7)
  store %struct.vudc* %8, %struct.vudc** %5, align 8
  %9 = load %struct.vudc*, %struct.vudc** %5, align 8
  %10 = getelementptr inbounds %struct.vudc, %struct.vudc* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %14 = load %struct.vudc*, %struct.vudc** %5, align 8
  %15 = getelementptr inbounds %struct.vudc, %struct.vudc* %14, i32 0, i32 4
  store %struct.usb_gadget_driver* %13, %struct.usb_gadget_driver** %15, align 8
  %16 = load %struct.vudc*, %struct.vudc** %5, align 8
  %17 = getelementptr inbounds %struct.vudc, %struct.vudc* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.vudc*, %struct.vudc** %5, align 8
  %19 = getelementptr inbounds %struct.vudc, %struct.vudc* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.vudc*, %struct.vudc** %5, align 8
  %21 = getelementptr inbounds %struct.vudc, %struct.vudc* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.vudc*, %struct.vudc** %5, align 8
  %23 = getelementptr inbounds %struct.vudc, %struct.vudc* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  ret i32 0
}

declare dso_local %struct.vudc* @usb_gadget_to_vudc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
