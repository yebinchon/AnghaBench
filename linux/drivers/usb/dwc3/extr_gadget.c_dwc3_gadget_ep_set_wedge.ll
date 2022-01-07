; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_set_wedge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_set_wedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.dwc3_ep = type { i32, i32, %struct.dwc3* }
%struct.dwc3 = type { i32 }

@DWC3_EP_WEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @dwc3_gadget_ep_set_wedge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_ep_set_wedge(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %8 = call %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep* %7)
  store %struct.dwc3_ep* %8, %struct.dwc3_ep** %3, align 8
  %9 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %9, i32 0, i32 2
  %11 = load %struct.dwc3*, %struct.dwc3** %10, align 8
  store %struct.dwc3* %11, %struct.dwc3** %4, align 8
  %12 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @DWC3_EP_WEDGE, align 4
  %17 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %18 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %27 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %1
  %31 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %32 = call i32 @__dwc3_gadget_ep0_set_halt(%struct.usb_ep* %31, i32 1)
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %35 = call i32 @__dwc3_gadget_ep_set_halt(%struct.dwc3_ep* %34, i32 1, i32 0)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__dwc3_gadget_ep0_set_halt(%struct.usb_ep*, i32) #1

declare dso_local i32 @__dwc3_gadget_ep_set_halt(%struct.dwc3_ep*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
