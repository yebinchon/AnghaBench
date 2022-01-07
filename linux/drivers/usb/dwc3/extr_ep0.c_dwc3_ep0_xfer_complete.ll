; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_xfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_xfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, %struct.dwc3_ep** }
%struct.dwc3_ep = type { i64, i32 }
%struct.dwc3_event_depevt = type { i64 }

@DWC3_EP_TRANSFER_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"UNKNOWN ep0state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_event_depevt*)* @dwc3_ep0_xfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_ep0_xfer_complete(%struct.dwc3* %0, %struct.dwc3_event_depevt* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_event_depevt*, align 8
  %5 = alloca %struct.dwc3_ep*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %4, align 8
  %6 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %7 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 2
  %8 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %7, align 8
  %9 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %10 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %8, i64 %11
  %13 = load %struct.dwc3_ep*, %struct.dwc3_ep** %12, align 8
  store %struct.dwc3_ep* %13, %struct.dwc3_ep** %5, align 8
  %14 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %17 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %21 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %23 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %39 [
    i32 129, label %27
    i32 130, label %31
    i32 128, label %35
  ]

27:                                               ; preds = %2
  %28 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %29 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %30 = call i32 @dwc3_ep0_inspect_setup(%struct.dwc3* %28, %struct.dwc3_event_depevt* %29)
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %33 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %34 = call i32 @dwc3_ep0_complete_data(%struct.dwc3* %32, %struct.dwc3_event_depevt* %33)
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %37 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %38 = call i32 @dwc3_ep0_complete_status(%struct.dwc3* %36, %struct.dwc3_event_depevt* %37)
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %35, %31, %27
  ret void
}

declare dso_local i32 @dwc3_ep0_inspect_setup(%struct.dwc3*, %struct.dwc3_event_depevt*) #1

declare dso_local i32 @dwc3_ep0_complete_data(%struct.dwc3*, %struct.dwc3_event_depevt*) #1

declare dso_local i32 @dwc3_ep0_complete_status(%struct.dwc3*, %struct.dwc3_event_depevt*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
