; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_end_control_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_end_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }
%struct.dwc3_ep = type { i64 }
%struct.dwc3_gadget_ep_cmd_params = type { i32 }

@DWC3_DEPCMD_ENDTRANSFER = common dso_local global i32 0, align 4
@DWC3_DEPCMD_CMDIOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_ep*)* @dwc3_ep0_end_control_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_ep0_end_control_data(%struct.dwc3* %0, %struct.dwc3_ep* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_ep* %1, %struct.dwc3_ep** %4, align 8
  %8 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %9 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @DWC3_DEPCMD_ENDTRANSFER, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @DWC3_DEPCMD_CMDIOC, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %19 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @DWC3_DEPCMD_PARAM(i64 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %5, i32 0, i32 4)
  %25 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %25, i32 %26, %struct.dwc3_gadget_ep_cmd_params* %5)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %31 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @DWC3_DEPCMD_PARAM(i64) #1

declare dso_local i32 @memset(%struct.dwc3_gadget_ep_cmd_params*, i32, i32) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
