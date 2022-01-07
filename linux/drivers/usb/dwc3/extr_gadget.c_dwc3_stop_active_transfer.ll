; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_stop_active_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_stop_active_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, i64, %struct.dwc3* }
%struct.dwc3 = type { i64 }
%struct.dwc3_gadget_ep_cmd_params = type { i32 }

@DWC3_EP_TRANSFER_STARTED = common dso_local global i32 0, align 4
@DWC3_DEPCMD_ENDTRANSFER = common dso_local global i32 0, align 4
@DWC3_DEPCMD_HIPRI_FORCERM = common dso_local global i32 0, align 4
@DWC3_DEPCMD_CMDIOC = common dso_local global i32 0, align 4
@DWC3_REVISION_310A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_ep*, i32, i32)* @dwc3_stop_active_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_stop_active_transfer(%struct.dwc3_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc3*, align 8
  %8 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %12 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %11, i32 0, i32 2
  %13 = load %struct.dwc3*, %struct.dwc3** %12, align 8
  store %struct.dwc3* %13, %struct.dwc3** %7, align 8
  %14 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %15 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %66

21:                                               ; preds = %3
  %22 = load i32, i32* @DWC3_DEPCMD_ENDTRANSFER, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @DWC3_DEPCMD_HIPRI_FORCERM, align 4
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @DWC3_DEPCMD_CMDIOC, align 4
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %42 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @DWC3_DEPCMD_PARAM(i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %8, i32 0, i32 4)
  %48 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %48, i32 %49, %struct.dwc3_gadget_ep_cmd_params* %8)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @WARN_ON_ONCE(i32 %51)
  %53 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %54 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %56 = call i64 @dwc3_is_usb31(%struct.dwc3* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %37
  %59 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %60 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DWC3_REVISION_310A, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %37
  %65 = call i32 @udelay(i32 100)
  br label %66

66:                                               ; preds = %20, %64, %58
  ret void
}

declare dso_local i32 @DWC3_DEPCMD_PARAM(i64) #1

declare dso_local i32 @memset(%struct.dwc3_gadget_ep_cmd_params*, i32, i32) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @dwc3_is_usb31(%struct.dwc3*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
