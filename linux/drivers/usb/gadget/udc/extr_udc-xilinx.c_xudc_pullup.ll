; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.xusb_udc = type { i32, i64, i32 (i64, i64, i32)*, i32 (i64)* }

@XUSB_CONTROL_OFFSET = common dso_local global i64 0, align 8
@XUSB_CONTROL_USB_READY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @xudc_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xudc_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xusb_udc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %9 = call %struct.xusb_udc* @to_udc(%struct.usb_gadget* %8)
  store %struct.xusb_udc* %9, %struct.xusb_udc** %5, align 8
  %10 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %11 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %15 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %14, i32 0, i32 3
  %16 = load i32 (i64)*, i32 (i64)** %15, align 8
  %17 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %18 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XUSB_CONTROL_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 %16(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @XUSB_CONTROL_USB_READY_MASK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @XUSB_CONTROL_USB_READY_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %36 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %35, i32 0, i32 2
  %37 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %36, align 8
  %38 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %39 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XUSB_CONTROL_OFFSET, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 %37(i64 %40, i64 %41, i32 %42)
  %44 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %45 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret i32 0
}

declare dso_local %struct.xusb_udc* @to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
