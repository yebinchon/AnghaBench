; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_free_host_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_free_host_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_input_control_ctx = type { i32 }

@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Removing %u failed ep ctxs, %u now active.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_input_control_ctx*)* @xhci_free_host_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_free_host_resources(%struct.xhci_hcd* %0, %struct.xhci_input_control_ctx* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_input_control_ctx*, align 8
  %5 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_input_control_ctx* %1, %struct.xhci_input_control_ctx** %4, align 8
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %7 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %4, align 8
  %8 = call i64 @xhci_count_num_new_endpoints(%struct.xhci_hcd* %6, %struct.xhci_input_control_ctx* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %17 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %16, i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %21)
  ret void
}

declare dso_local i64 @xhci_count_num_new_endpoints(%struct.xhci_hcd*, %struct.xhci_input_control_ctx*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
