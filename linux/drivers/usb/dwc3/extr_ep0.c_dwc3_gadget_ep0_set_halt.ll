; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_gadget_ep0_set_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_gadget_ep0_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.dwc3_ep = type { %struct.dwc3* }
%struct.dwc3 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_gadget_ep0_set_halt(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc3_ep*, align 8
  %6 = alloca %struct.dwc3*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %10 = call %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep* %9)
  store %struct.dwc3_ep* %10, %struct.dwc3_ep** %5, align 8
  %11 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %12 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %11, i32 0, i32 0
  %13 = load %struct.dwc3*, %struct.dwc3** %12, align 8
  store %struct.dwc3* %13, %struct.dwc3** %6, align 8
  %14 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @__dwc3_gadget_ep0_set_halt(%struct.usb_ep* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__dwc3_gadget_ep0_set_halt(%struct.usb_ep*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
