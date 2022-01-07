; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_reset_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_queue_reset_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_command = type { i32 }

@TRB_RESET_EP = common dso_local global i32 0, align 4
@EP_SOFT_RESET = common dso_local global i32 0, align 4
@TRB_TSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_queue_reset_ep(%struct.xhci_hcd* %0, %struct.xhci_command* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca %struct.xhci_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store %struct.xhci_command* %1, %struct.xhci_command** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @SLOT_ID_FOR_TRB(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @EP_ID_FOR_TRB(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @TRB_RESET_EP, align 4
  %19 = call i32 @TRB_TYPE(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @EP_SOFT_RESET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @TRB_TSP, align 4
  %25 = load i32, i32* %13, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %23, %5
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %29 = load %struct.xhci_command*, %struct.xhci_command** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @queue_command(%struct.xhci_hcd* %28, %struct.xhci_command* %29, i32 0, i32 0, i32 0, i32 %34, i32 0)
  ret i32 %35
}

declare dso_local i32 @SLOT_ID_FOR_TRB(i32) #1

declare dso_local i32 @EP_ID_FOR_TRB(i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @queue_command(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
