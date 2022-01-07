; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_start_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_start_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, %struct.dwc3* }
%struct.dwc3 = type { i32, i32 }
%struct.dwc3_gadget_ep_cmd_params = type { i32, i32 }

@DWC3_EP_TRANSFER_STARTED = common dso_local global i32 0, align 4
@DWC3_DEPCMD_STARTTRANSFER = common dso_local global i32 0, align 4
@DWC3_EP0_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*)* @dwc3_ep0_start_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_start_trans(%struct.dwc3_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  %7 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %16 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %15, i32 0, i32 1
  %17 = load %struct.dwc3*, %struct.dwc3** %16, align 8
  store %struct.dwc3* %17, %struct.dwc3** %5, align 8
  %18 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %4, i32 0, i32 8)
  %19 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @upper_32_bits(i32 %21)
  %23 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lower_32_bits(i32 %26)
  %28 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %30 = load i32, i32* @DWC3_DEPCMD_STARTTRANSFER, align 4
  %31 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %29, i32 %30, %struct.dwc3_gadget_ep_cmd_params* %4)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %14
  %37 = load i32, i32* @DWC3_EP0_COMPLETE, align 4
  %38 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %34, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.dwc3_gadget_ep_cmd_params*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
