; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xusb_udc = type { i32, i64, i32, i32 (i32, i32, i32)*, %struct.TYPE_4__, %struct.usb_gadget_driver*, i32, %struct.xusb_ep* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xusb_ep = type { i32 }

@XUSB_EP_NUMBER_ZERO = common dso_local global i64 0, align 8
@config_bulk_out_desc = common dso_local global %struct.usb_endpoint_descriptor zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s is already bound to %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@XUSB_ADDRESS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @xudc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xudc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.xusb_udc*, align 8
  %6 = alloca %struct.xusb_ep*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %11 = call %struct.xusb_udc* @to_udc(%struct.usb_gadget* %10)
  store %struct.xusb_udc* %11, %struct.xusb_udc** %5, align 8
  %12 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %13 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %12, i32 0, i32 7
  %14 = load %struct.xusb_ep*, %struct.xusb_ep** %13, align 8
  %15 = load i64, i64* @XUSB_EP_NUMBER_ZERO, align 8
  %16 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %14, i64 %15
  store %struct.xusb_ep* %16, %struct.xusb_ep** %6, align 8
  store %struct.usb_endpoint_descriptor* @config_bulk_out_desc, %struct.usb_endpoint_descriptor** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %18 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %22 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %21, i32 0, i32 5
  %23 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %22, align 8
  %24 = icmp ne %struct.usb_gadget_driver* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %27 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %30 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %34 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %33, i32 0, i32 5
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %34, align 8
  %36 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %38)
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %65

42:                                               ; preds = %2
  %43 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %44 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %45 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %44, i32 0, i32 5
  store %struct.usb_gadget_driver* %43, %struct.usb_gadget_driver** %45, align 8
  %46 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %47 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %50 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.xusb_ep*, %struct.xusb_ep** %6, align 8
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %54 = call i32 @__xudc_ep_enable(%struct.xusb_ep* %52, %struct.usb_endpoint_descriptor* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %56 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %55, i32 0, i32 3
  %57 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %56, align 8
  %58 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %59 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XUSB_ADDRESS_OFFSET, align 4
  %62 = call i32 %57(i32 %60, i32 %61, i32 0)
  %63 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %64 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %42, %25
  %66 = load %struct.xusb_udc*, %struct.xusb_udc** %5, align 8
  %67 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.xusb_udc* @to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @__xudc_ep_enable(%struct.xusb_ep*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
