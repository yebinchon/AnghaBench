; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_run_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_run_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@CMD_RING_STATE_RUNNING = common dso_local global i32 0, align 4
@XHCI_NEC_HOST = common dso_local global i32 0, align 4
@trace_xhci_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Finished xhci_run for USB3 roothub\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*)* @xhci_run_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_run_finished(%struct.xhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  %4 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %5 = call i64 @xhci_start(%struct.xhci_hcd* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = call i32 @xhci_halt(%struct.xhci_hcd* %8)
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* @HC_STATE_RUNNING, align 4
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @CMD_RING_STATE_RUNNING, align 4
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XHCI_NEC_HOST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %29 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %28)
  br label %30

30:                                               ; preds = %27, %12
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %32 = load i32, i32* @trace_xhci_dbg_init, align 4
  %33 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %31, i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @xhci_start(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_halt(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
