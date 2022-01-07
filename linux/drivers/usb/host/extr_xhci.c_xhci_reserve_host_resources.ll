; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_reserve_host_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_reserve_host_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i64, i64 }
%struct.xhci_input_control_ctx = type { i32 }

@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Not enough ep ctxs: %u active, need to add %u, limit is %u.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Adding %u ep ctxs, %u now active.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_input_control_ctx*)* @xhci_reserve_host_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_reserve_host_resources(%struct.xhci_hcd* %0, %struct.xhci_input_control_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_input_control_ctx*, align 8
  %6 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_input_control_ctx* %1, %struct.xhci_input_control_ctx** %5, align 8
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %8 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %5, align 8
  %9 = call i64 @xhci_count_num_new_endpoints(%struct.xhci_hcd* %7, %struct.xhci_input_control_ctx* %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %21 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %27 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (%struct.xhci_hcd*, i32, i8*, i64, i64, ...) @xhci_dbg_trace(%struct.xhci_hcd* %20, i32 %21, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25, i64 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %2
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %35 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %39 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (%struct.xhci_hcd*, i32, i8*, i64, i64, ...) @xhci_dbg_trace(%struct.xhci_hcd* %38, i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @xhci_count_num_new_endpoints(%struct.xhci_hcd*, %struct.xhci_input_control_ctx*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
