; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dwc3_event_devt = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"unexpected hibernation event\0A\00", align 1
@DWC3_REVISION_230A = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"UNKNOWN IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_event_devt*)* @dwc3_gadget_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_interrupt(%struct.dwc3* %0, %struct.dwc3_event_devt* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_event_devt*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_event_devt* %1, %struct.dwc3_event_devt** %4, align 8
  %5 = load %struct.dwc3_event_devt*, %struct.dwc3_event_devt** %4, align 8
  %6 = getelementptr inbounds %struct.dwc3_event_devt, %struct.dwc3_event_devt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %67 [
    i32 136, label %8
    i32 130, label %11
    i32 137, label %14
    i32 128, label %17
    i32 133, label %20
    i32 132, label %39
    i32 135, label %45
    i32 129, label %66
    i32 134, label %66
    i32 138, label %66
    i32 131, label %66
  ]

8:                                                ; preds = %2
  %9 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %10 = call i32 @dwc3_gadget_disconnect_interrupt(%struct.dwc3* %9)
  br label %75

11:                                               ; preds = %2
  %12 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %13 = call i32 @dwc3_gadget_reset_interrupt(%struct.dwc3* %12)
  br label %75

14:                                               ; preds = %2
  %15 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %16 = call i32 @dwc3_gadget_conndone_interrupt(%struct.dwc3* %15)
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %19 = call i32 @dwc3_gadget_wakeup_interrupt(%struct.dwc3* %18)
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @dev_WARN_ONCE(i32 %23, i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %75

33:                                               ; preds = %20
  %34 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %35 = load %struct.dwc3_event_devt*, %struct.dwc3_event_devt** %4, align 8
  %36 = getelementptr inbounds %struct.dwc3_event_devt, %struct.dwc3_event_devt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dwc3_gadget_hibernation_interrupt(%struct.dwc3* %34, i32 %37)
  br label %75

39:                                               ; preds = %2
  %40 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %41 = load %struct.dwc3_event_devt*, %struct.dwc3_event_devt** %4, align 8
  %42 = getelementptr inbounds %struct.dwc3_event_devt, %struct.dwc3_event_devt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dwc3_gadget_linksts_change_interrupt(%struct.dwc3* %40, i32 %43)
  br label %75

45:                                               ; preds = %2
  %46 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DWC3_REVISION_230A, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %60 = load %struct.dwc3_event_devt*, %struct.dwc3_event_devt** %4, align 8
  %61 = getelementptr inbounds %struct.dwc3_event_devt, %struct.dwc3_event_devt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dwc3_gadget_suspend_interrupt(%struct.dwc3* %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %45
  br label %75

66:                                               ; preds = %2, %2, %2, %2
  br label %75

67:                                               ; preds = %2
  %68 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %69 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dwc3_event_devt*, %struct.dwc3_event_devt** %4, align 8
  %72 = getelementptr inbounds %struct.dwc3_event_devt, %struct.dwc3_event_devt* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_WARN(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67, %66, %65, %39, %33, %32, %17, %14, %11, %8
  ret void
}

declare dso_local i32 @dwc3_gadget_disconnect_interrupt(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_reset_interrupt(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_conndone_interrupt(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_wakeup_interrupt(%struct.dwc3*) #1

declare dso_local i32 @dev_WARN_ONCE(i32, i32, i8*) #1

declare dso_local i32 @dwc3_gadget_hibernation_interrupt(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_gadget_linksts_change_interrupt(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_gadget_suspend_interrupt(%struct.dwc3*, i32) #1

declare dso_local i32 @dev_WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
