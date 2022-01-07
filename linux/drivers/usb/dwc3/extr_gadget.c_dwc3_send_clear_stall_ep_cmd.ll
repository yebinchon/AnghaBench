; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_send_clear_stall_ep_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_send_clear_stall_ep_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i64, %struct.dwc3* }
%struct.dwc3 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dwc3_gadget_ep_cmd_params = type { i32 }

@DWC3_DEPCMD_CLEARSTALL = common dso_local global i32 0, align 4
@DWC3_REVISION_260A = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@DWC3_DEPCMD_CLEARPENDIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*)* @dwc3_send_clear_stall_ep_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_send_clear_stall_ep_cmd(%struct.dwc3_ep* %0) #0 {
  %2 = alloca %struct.dwc3_ep*, align 8
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %2, align 8
  %6 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %7 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %6, i32 0, i32 1
  %8 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  store %struct.dwc3* %8, %struct.dwc3** %3, align 8
  %9 = load i32, i32* @DWC3_DEPCMD_CLEARSTALL, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DWC3_REVISION_260A, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_SPEED_SUPER, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @DWC3_DEPCMD_CLEARPENDIN, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %20, %14, %1
  %32 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %4, i32 0, i32 4)
  %33 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %33, i32 %34, %struct.dwc3_gadget_ep_cmd_params* %4)
  ret i32 %35
}

declare dso_local i32 @memset(%struct.dwc3_gadget_ep_cmd_params*, i32, i32) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
