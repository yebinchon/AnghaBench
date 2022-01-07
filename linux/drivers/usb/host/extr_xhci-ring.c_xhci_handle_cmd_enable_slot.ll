; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_enable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_command = type { i32 }

@COMP_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, %struct.xhci_command*, i64)* @xhci_handle_cmd_enable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_handle_cmd_enable_slot(%struct.xhci_hcd* %0, i32 %1, %struct.xhci_command* %2, i64 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_command*, align 8
  %8 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xhci_command* %2, %struct.xhci_command** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @COMP_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.xhci_command*, %struct.xhci_command** %7, align 8
  %15 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %19

16:                                               ; preds = %4
  %17 = load %struct.xhci_command*, %struct.xhci_command** %7, align 8
  %18 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
