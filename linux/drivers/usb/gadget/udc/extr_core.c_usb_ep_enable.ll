; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usb_ep*, i32)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_ep_enable(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %5 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %11 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @usb_endpoint_maxp(i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %9
  %19 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %20 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.usb_ep*, i32)*, i32 (%struct.usb_ep*, i32)** %22, align 8
  %24 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %25 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %26 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %23(%struct.usb_ep* %24, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %35

32:                                               ; preds = %18
  %33 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %34 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %31, %15, %8
  %36 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @trace_usb_ep_enable(%struct.usb_ep* %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @usb_endpoint_maxp(i32) #1

declare dso_local i32 @trace_usb_ep_enable(%struct.usb_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
