; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_xfernotready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_xfernotready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i32, %struct.dwc3_ep**, i32, i32, i32 }
%struct.dwc3_ep = type { i32 }
%struct.dwc3_event_depevt = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"unexpected direction for Data Phase\0A\00", align 1
@DWC3_EP0_NRDY_STATUS = common dso_local global i32 0, align 4
@EP0_STATUS_PHASE = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_event_depevt*)* @dwc3_ep0_xfernotready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_ep0_xfernotready(%struct.dwc3* %0, %struct.dwc3_event_depevt* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_event_depevt*, align 8
  %5 = alloca %struct.dwc3_ep*, align 8
  %6 = alloca %struct.dwc3_ep*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %4, align 8
  %7 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %8 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %84 [
    i32 129, label %10
    i32 128, label %38
  ]

10:                                               ; preds = %2
  %11 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %15 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 3
  %21 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %20, align 8
  %22 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %23 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %21, i64 %25
  %27 = load %struct.dwc3_ep*, %struct.dwc3_ep** %26, align 8
  store %struct.dwc3_ep* %27, %struct.dwc3_ep** %5, align 8
  %28 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %29 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %33 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %34 = call i32 @dwc3_ep0_end_control_data(%struct.dwc3* %32, %struct.dwc3_ep* %33)
  %35 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %36 = call i32 @dwc3_ep0_stall_and_restart(%struct.dwc3* %35)
  br label %84

37:                                               ; preds = %10
  br label %84

38:                                               ; preds = %2
  %39 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %40 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DWC3_EP0_NRDY_STATUS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %84

45:                                               ; preds = %38
  %46 = load i32, i32* @EP0_STATUS_PHASE, align 4
  %47 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %48 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %50 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %45
  %54 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %55 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %54, i32 0, i32 3
  %56 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %55, align 8
  %57 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %56, i64 0
  %58 = load %struct.dwc3_ep*, %struct.dwc3_ep** %57, align 8
  store %struct.dwc3_ep* %58, %struct.dwc3_ep** %6, align 8
  %59 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %60 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON_ONCE(i32 %63)
  %65 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %66 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %65, i32 0, i32 0
  %67 = call i32 @list_empty(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %53
  %70 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %71 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %73 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %72, i32 0, i32 2
  %74 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %75 = call i32 @usb_gadget_set_state(i32* %73, i32 %74)
  %76 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %77 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %78 = call i32 @dwc3_ep0_do_control_status(%struct.dwc3* %76, %struct.dwc3_event_depevt* %77)
  br label %79

79:                                               ; preds = %69, %53
  br label %84

80:                                               ; preds = %45
  %81 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %82 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %83 = call i32 @dwc3_ep0_do_control_status(%struct.dwc3* %81, %struct.dwc3_event_depevt* %82)
  br label %84

84:                                               ; preds = %18, %44, %79, %80, %2, %37
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dwc3_ep0_end_control_data(%struct.dwc3*, %struct.dwc3_ep*) #1

declare dso_local i32 @dwc3_ep0_stall_and_restart(%struct.dwc3*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @usb_gadget_set_state(i32*, i32) #1

declare dso_local i32 @dwc3_ep0_do_control_status(%struct.dwc3*, %struct.dwc3_event_depevt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
