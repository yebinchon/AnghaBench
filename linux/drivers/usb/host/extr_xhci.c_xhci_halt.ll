; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@trace_xhci_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"// Halt the HC\00", align 1
@STS_HALT = common dso_local global i32 0, align 4
@XHCI_MAX_HALT_USEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Host halt failed, %d\0A\00", align 1
@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@CMD_RING_STATE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_halt(%struct.xhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %6 = load i32, i32* @trace_xhci_dbg_init, align 4
  %7 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %5, i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = call i32 @xhci_quiesce(%struct.xhci_hcd* %8)
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @STS_HALT, align 4
  %15 = load i32, i32* @STS_HALT, align 4
  %16 = load i32, i32* @XHCI_MAX_HALT_USEC, align 4
  %17 = call i32 @xhci_handshake(i32* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @xhci_warn(%struct.xhci_hcd* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @CMD_RING_STATE_STOPPED, align 4
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

declare dso_local i32 @xhci_quiesce(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_handshake(i32*, i32, i32, i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
