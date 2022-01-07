; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_ep_queue_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_ep_queue_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.dwc2_hsotg_ep = type { %struct.dwc2_hsotg* }
%struct.dwc2_hsotg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @dwc2_hsotg_ep_queue_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hsotg_ep_queue_lock(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc2_hsotg_ep*, align 8
  %8 = alloca %struct.dwc2_hsotg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %12 = call %struct.dwc2_hsotg_ep* @our_ep(%struct.usb_ep* %11)
  store %struct.dwc2_hsotg_ep* %12, %struct.dwc2_hsotg_ep** %7, align 8
  %13 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %7, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %13, i32 0, i32 0
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %14, align 8
  store %struct.dwc2_hsotg* %15, %struct.dwc2_hsotg** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %21 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dwc2_hsotg_ep_queue(%struct.usb_ep* %20, %struct.usb_request* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %10, align 4
  ret i32 %28
}

declare dso_local %struct.dwc2_hsotg_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc2_hsotg_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
