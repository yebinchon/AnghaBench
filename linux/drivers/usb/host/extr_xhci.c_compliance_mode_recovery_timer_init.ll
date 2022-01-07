; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_compliance_mode_recovery_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_compliance_mode_recovery_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@compliance_mode_recovery = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@COMP_MODE_RCVRY_MSECS = common dso_local global i32 0, align 4
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Compliance mode recovery timer initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*)* @compliance_mode_recovery_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compliance_mode_recovery_timer_init(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %3 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %5, i32 0, i32 0
  %7 = load i32, i32* @compliance_mode_recovery, align 4
  %8 = call i32 @timer_setup(%struct.TYPE_3__* %6, i32 %7, i32 0)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @COMP_MODE_RCVRY_MSECS, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %16, i32 0, i32 0
  %18 = call i32 @add_timer(%struct.TYPE_3__* %17)
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %20 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %21 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %19, i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
