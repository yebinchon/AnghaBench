; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_get_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.xusb_udc = type { i32 (i64)*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@XUSB_FRAMENUM_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @xudc_get_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xudc_get_frame(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.xusb_udc*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = icmp ne %struct.usb_gadget* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %13 = call %struct.xusb_udc* @to_udc(%struct.usb_gadget* %12)
  store %struct.xusb_udc* %13, %struct.xusb_udc** %4, align 8
  %14 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %15 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %14, i32 0, i32 0
  %16 = load i32 (i64)*, i32 (i64)** %15, align 8
  %17 = load %struct.xusb_udc*, %struct.xusb_udc** %4, align 8
  %18 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XUSB_FRAMENUM_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 %16(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.xusb_udc* @to_udc(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
