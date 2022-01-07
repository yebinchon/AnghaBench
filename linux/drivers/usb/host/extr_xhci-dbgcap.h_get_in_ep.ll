; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.h_get_in_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.h_get_in_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbc_ep = type { i32 }
%struct.xhci_hcd = type { %struct.xhci_dbc* }
%struct.xhci_dbc = type { %struct.dbc_ep* }

@BULK_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dbc_ep* (%struct.xhci_hcd*)* @get_in_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dbc_ep* @get_in_ep(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca %struct.xhci_dbc*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %4 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %4, i32 0, i32 0
  %6 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  store %struct.xhci_dbc* %6, %struct.xhci_dbc** %3, align 8
  %7 = load %struct.xhci_dbc*, %struct.xhci_dbc** %3, align 8
  %8 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %7, i32 0, i32 0
  %9 = load %struct.dbc_ep*, %struct.dbc_ep** %8, align 8
  %10 = load i64, i64* @BULK_IN, align 8
  %11 = getelementptr inbounds %struct.dbc_ep, %struct.dbc_ep* %9, i64 %10
  ret %struct.dbc_ep* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
