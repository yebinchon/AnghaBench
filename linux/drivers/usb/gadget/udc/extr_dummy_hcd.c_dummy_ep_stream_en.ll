; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_ep_stream_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_ep_stream_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy_hcd*, %struct.urb*)* @dummy_ep_stream_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_ep_stream_en(%struct.dummy_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dummy_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.dummy_hcd* %0, %struct.dummy_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %8 = load %struct.urb*, %struct.urb** %5, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %11, %struct.usb_endpoint_descriptor** %6, align 8
  %12 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %13 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %18 = call i32 @dummy_get_ep_idx(%struct.usb_endpoint_descriptor* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %22 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dummy_get_ep_idx(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
