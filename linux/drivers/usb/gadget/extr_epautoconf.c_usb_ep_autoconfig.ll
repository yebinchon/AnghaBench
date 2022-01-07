; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_epautoconf.c_usb_ep_autoconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_epautoconf.c_usb_ep_autoconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_gadget = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_ep* @usb_ep_autoconfig(%struct.usb_gadget* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %9 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %11 = call %struct.usb_ep* @usb_ep_autoconfig_ss(%struct.usb_gadget* %9, %struct.usb_endpoint_descriptor* %10, i32* null)
  store %struct.usb_ep* %11, %struct.usb_ep** %6, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %13 = icmp ne %struct.usb_ep* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.usb_ep* null, %struct.usb_ep** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %15
  %25 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %26 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 64
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 64, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %35 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %15
  %37 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  store %struct.usb_ep* %37, %struct.usb_ep** %3, align 8
  br label %38

38:                                               ; preds = %36, %14
  %39 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  ret %struct.usb_ep* %39
}

declare dso_local %struct.usb_ep* @usb_ep_autoconfig_ss(%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
