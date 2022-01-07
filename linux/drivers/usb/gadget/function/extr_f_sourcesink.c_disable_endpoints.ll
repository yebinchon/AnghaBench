; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_disable_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_disable_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }
%struct.usb_ep = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_endpoints(%struct.usb_composite_dev* %0, %struct.usb_ep* %1, %struct.usb_ep* %2, %struct.usb_ep* %3, %struct.usb_ep* %4) #0 {
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.usb_ep*, align 8
  %8 = alloca %struct.usb_ep*, align 8
  %9 = alloca %struct.usb_ep*, align 8
  %10 = alloca %struct.usb_ep*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %6, align 8
  store %struct.usb_ep* %1, %struct.usb_ep** %7, align 8
  store %struct.usb_ep* %2, %struct.usb_ep** %8, align 8
  store %struct.usb_ep* %3, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %4, %struct.usb_ep** %10, align 8
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %13 = call i32 @disable_ep(%struct.usb_composite_dev* %11, %struct.usb_ep* %12)
  %14 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %8, align 8
  %16 = call i32 @disable_ep(%struct.usb_composite_dev* %14, %struct.usb_ep* %15)
  %17 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %18 = icmp ne %struct.usb_ep* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %21 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %22 = call i32 @disable_ep(%struct.usb_composite_dev* %20, %struct.usb_ep* %21)
  br label %23

23:                                               ; preds = %19, %5
  %24 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %25 = icmp ne %struct.usb_ep* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %28 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %29 = call i32 @disable_ep(%struct.usb_composite_dev* %27, %struct.usb_ep* %28)
  br label %30

30:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @disable_ep(%struct.usb_composite_dev*, %struct.usb_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
