; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_endpoint_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_endpoint_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.dwc3_ep** }
%struct.dwc3_ep = type { i32 }
%struct.dwc3_event_depevt = type { i64, i32, i32 }

@DWC3_EP_ENABLED = common dso_local global i32 0, align 4
@DWC3_EP_TRANSFER_STARTED = common dso_local global i32 0, align 4
@DWC3_DEPCMD_ENDTRANSFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_event_depevt*)* @dwc3_endpoint_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_endpoint_interrupt(%struct.dwc3* %0, %struct.dwc3_event_depevt* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_event_depevt*, align 8
  %5 = alloca %struct.dwc3_ep*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %4, align 8
  %8 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %9 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 0
  %13 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %13, i64 %14
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %15, align 8
  store %struct.dwc3_ep* %16, %struct.dwc3_ep** %5, align 8
  %17 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %18 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %2
  %24 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %25 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %79

31:                                               ; preds = %23
  %32 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %33 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 133
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %79

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %38
  %45 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %46 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %47 = call i32 @dwc3_ep0_interrupt(%struct.dwc3* %45, %struct.dwc3_event_depevt* %46)
  br label %79

48:                                               ; preds = %41
  %49 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %50 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %79 [
    i32 129, label %52
    i32 128, label %56
    i32 133, label %60
    i32 131, label %78
    i32 130, label %78
    i32 132, label %78
  ]

52:                                               ; preds = %48
  %53 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %54 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %55 = call i32 @dwc3_gadget_endpoint_transfer_in_progress(%struct.dwc3_ep* %53, %struct.dwc3_event_depevt* %54)
  br label %79

56:                                               ; preds = %48
  %57 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %58 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %59 = call i32 @dwc3_gadget_endpoint_transfer_not_ready(%struct.dwc3_ep* %57, %struct.dwc3_event_depevt* %58)
  br label %79

60:                                               ; preds = %48
  %61 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %62 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @DEPEVT_PARAMETER_CMD(i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @DWC3_DEPCMD_ENDTRANSFER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %72 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %76 = call i32 @dwc3_gadget_ep_cleanup_cancelled_requests(%struct.dwc3_ep* %75)
  br label %77

77:                                               ; preds = %68, %60
  br label %79

78:                                               ; preds = %48, %48, %48
  br label %79

79:                                               ; preds = %30, %36, %44, %48, %78, %77, %56, %52
  ret void
}

declare dso_local i32 @dwc3_ep0_interrupt(%struct.dwc3*, %struct.dwc3_event_depevt*) #1

declare dso_local i32 @dwc3_gadget_endpoint_transfer_in_progress(%struct.dwc3_ep*, %struct.dwc3_event_depevt*) #1

declare dso_local i32 @dwc3_gadget_endpoint_transfer_not_ready(%struct.dwc3_ep*, %struct.dwc3_event_depevt*) #1

declare dso_local i64 @DEPEVT_PARAMETER_CMD(i32) #1

declare dso_local i32 @dwc3_gadget_ep_cleanup_cancelled_requests(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
