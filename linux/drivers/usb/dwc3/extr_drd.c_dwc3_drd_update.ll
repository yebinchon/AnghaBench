; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_drd_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_drd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64 }

@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@DWC3_GCTL_PRTCAP_HOST = common dso_local global i32 0, align 4
@DWC3_GCTL_PRTCAP_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_drd_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_drd_update(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @EXTCON_USB_HOST, align 4
  %13 = call i32 @extcon_get_state(i64 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %8
  %18 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @DWC3_GCTL_PRTCAP_HOST, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @DWC3_GCTL_PRTCAP_DEVICE, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = call i32 @dwc3_set_mode(%struct.dwc3* %18, i32 %26)
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @extcon_get_state(i64, i32) #1

declare dso_local i32 @dwc3_set_mode(%struct.dwc3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
