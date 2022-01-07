; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.xusb_udc = type { i32, i64, i32 (i64, i64, i32)*, i32 (i64)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XUSB_CONTROL_OFFSET = common dso_local global i64 0, align 8
@XUSB_CONTROL_USB_RMTWAKE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @xudc_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xudc_wakeup(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.xusb_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %8 = call %struct.xusb_udc* @to_udc(%struct.usb_gadget* %7)
  store %struct.xusb_udc* %8, %struct.xusb_udc** %3, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %12 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %16 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %22 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %21, i32 0, i32 3
  %23 = load i32 (i64)*, i32 (i64)** %22, align 8
  %24 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %25 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XUSB_CONTROL_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 %23(i64 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @XUSB_CONTROL_USB_RMTWAKE_MASK, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %34 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %33, i32 0, i32 2
  %35 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %34, align 8
  %36 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %37 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XUSB_CONTROL_OFFSET, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %35(i64 %38, i64 %39, i32 %40)
  %42 = call i32 @mdelay(i32 2)
  %43 = load i32, i32* @XUSB_CONTROL_USB_RMTWAKE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %48 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %47, i32 0, i32 2
  %49 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %48, align 8
  %50 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %51 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XUSB_CONTROL_OFFSET, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 %49(i64 %52, i64 %53, i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %20, %19
  %57 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %58 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.xusb_udc* @to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
