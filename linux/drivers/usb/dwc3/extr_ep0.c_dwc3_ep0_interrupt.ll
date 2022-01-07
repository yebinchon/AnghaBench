; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }
%struct.dwc3_event_depevt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc3_ep0_interrupt(%struct.dwc3* %0, %struct.dwc3_event_depevt* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_event_depevt*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %4, align 8
  %5 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %6 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %17 [
    i32 130, label %8
    i32 128, label %12
    i32 129, label %16
    i32 132, label %16
    i32 131, label %16
    i32 133, label %16
  ]

8:                                                ; preds = %2
  %9 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %10 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %11 = call i32 @dwc3_ep0_xfer_complete(%struct.dwc3* %9, %struct.dwc3_event_depevt* %10)
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %14 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %15 = call i32 @dwc3_ep0_xfernotready(%struct.dwc3* %13, %struct.dwc3_event_depevt* %14)
  br label %17

16:                                               ; preds = %2, %2, %2, %2
  br label %17

17:                                               ; preds = %2, %16, %12, %8
  ret void
}

declare dso_local i32 @dwc3_ep0_xfer_complete(%struct.dwc3*, %struct.dwc3_event_depevt*) #1

declare dso_local i32 @dwc3_ep0_xfernotready(%struct.dwc3*, %struct.dwc3_event_depevt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
