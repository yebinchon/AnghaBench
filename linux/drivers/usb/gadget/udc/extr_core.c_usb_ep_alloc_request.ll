; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_ep_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_ep_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32 }
%struct.usb_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_request* @usb_ep_alloc_request(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.usb_request* null, %struct.usb_request** %5, align 8
  %6 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %7 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to %struct.usb_request* (%struct.usb_ep*, i32)**
  %11 = load %struct.usb_request* (%struct.usb_ep*, i32)*, %struct.usb_request* (%struct.usb_ep*, i32)** %10, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.usb_request* %11(%struct.usb_ep* %12, i32 %13)
  store %struct.usb_request* %14, %struct.usb_request** %5, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %16 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %17 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %18 = icmp ne %struct.usb_request* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i32 [ 0, %19 ], [ %22, %20 ]
  %25 = call i32 @trace_usb_ep_alloc_request(%struct.usb_ep* %15, %struct.usb_request* %16, i32 %24)
  %26 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  ret %struct.usb_request* %26
}

declare dso_local i32 @trace_usb_ep_alloc_request(%struct.usb_ep*, %struct.usb_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
