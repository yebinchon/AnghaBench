; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_config_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_handle_cmd_config_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_event_cmd = type { i32 }
%struct.xhci_input_control_ctx = type { i32, i32 }
%struct.xhci_ep_ctx = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Could not get input context, bad type.\0A\00", align 1
@XHCI_RESET_EP_QUIRK = common dso_local global i32 0, align 4
@SLOT_FLAG = common dso_local global i64 0, align 8
@EP_HALTED = common dso_local global i32 0, align 4
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Completed config ep cmd - last ep index = %d, state = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, %struct.xhci_event_cmd*, i64)* @xhci_handle_cmd_config_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_handle_cmd_config_ep(%struct.xhci_hcd* %0, i32 %1, %struct.xhci_event_cmd* %2, i64 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_event_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xhci_virt_device*, align 8
  %10 = alloca %struct.xhci_input_control_ctx*, align 8
  %11 = alloca %struct.xhci_ep_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xhci_event_cmd* %2, %struct.xhci_event_cmd** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %17 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %16, i32 0, i32 1
  %18 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %18, i64 %20
  %22 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %21, align 8
  store %struct.xhci_virt_device* %22, %struct.xhci_virt_device** %9, align 8
  %23 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %9, align 8
  %24 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(i32 %25)
  store %struct.xhci_input_control_ctx* %26, %struct.xhci_input_control_ctx** %10, align 8
  %27 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %28 = icmp ne %struct.xhci_input_control_ctx* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %31 = call i32 @xhci_warn(%struct.xhci_hcd* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %103

32:                                               ; preds = %4
  %33 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %34 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @xhci_last_valid_endpoint(i64 %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %45 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %9, align 8
  %46 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %44, i32 %47, i32 %48)
  store %struct.xhci_ep_ctx* %49, %struct.xhci_ep_ctx** %11, align 8
  %50 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %11, align 8
  %51 = call i32 @trace_xhci_handle_cmd_config_ep(%struct.xhci_ep_ctx* %50)
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %53 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @XHCI_RESET_EP_QUIRK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %32
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @SLOT_FLAG, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i64, i64* %15, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %9, align 8
  %69 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @EP_HALTED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %67
  br label %103

81:                                               ; preds = %67
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %83 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %82, i32 %83, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* @EP_HALTED, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %9, align 8
  %90 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %88
  store i32 %97, i32* %95, align 4
  %98 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @ring_doorbell_for_active_rings(%struct.xhci_hcd* %98, i32 %99, i32 %100)
  br label %103

102:                                              ; preds = %61, %58, %32
  br label %103

103:                                              ; preds = %102, %81, %80, %29
  ret void
}

declare dso_local %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @xhci_last_valid_endpoint(i64) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @trace_xhci_handle_cmd_config_ep(%struct.xhci_ep_ctx*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, i32, i32) #1

declare dso_local i32 @ring_doorbell_for_active_rings(%struct.xhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
