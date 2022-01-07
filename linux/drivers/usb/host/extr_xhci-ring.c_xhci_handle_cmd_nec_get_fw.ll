; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_nec_get_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_nec_get_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_event_cmd = type { i32 }

@XHCI_NEC_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WARN NEC_GET_FW command on non-NEC host\0A\00", align 1
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"NEC firmware version %2x.%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_event_cmd*)* @xhci_handle_cmd_nec_get_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_handle_cmd_nec_get_fw(%struct.xhci_hcd* %0, %struct.xhci_event_cmd* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_event_cmd*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_event_cmd* %1, %struct.xhci_event_cmd** %4, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @XHCI_NEC_HOST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %13 = call i32 @xhci_warn(%struct.xhci_hcd* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %16 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %17 = load %struct.xhci_event_cmd*, %struct.xhci_event_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.xhci_event_cmd, %struct.xhci_event_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = call i32 @NEC_FW_MAJOR(i32 %20)
  %22 = load %struct.xhci_event_cmd*, %struct.xhci_event_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_event_cmd, %struct.xhci_event_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = call i32 @NEC_FW_MINOR(i32 %25)
  %27 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %15, i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, i32, i32) #1

declare dso_local i32 @NEC_FW_MAJOR(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @NEC_FW_MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
