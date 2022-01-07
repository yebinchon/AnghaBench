; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_ls_pmap_unschedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_ls_pmap_unschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i32, i32, i32 }

@DWC2_US_PER_SLICE = common dso_local global i32 0, align 4
@DWC2_LS_PERIODIC_SLICES_PER_FRAME = common dso_local global i32 0, align 4
@DWC2_LS_SCHEDULE_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_ls_pmap_unschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_ls_pmap_unschedule(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %7 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %8 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DWC2_US_PER_SLICE, align 4
  %11 = call i32 @DIV_ROUND_UP(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %13 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %14 = call i64* @dwc2_get_ls_map(%struct.dwc2_hsotg* %12, %struct.dwc2_qh* %13)
  store i64* %14, i64** %6, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %30

18:                                               ; preds = %2
  %19 = load i64*, i64** %6, align 8
  %20 = load i32, i32* @DWC2_LS_PERIODIC_SLICES_PER_FRAME, align 4
  %21 = load i32, i32* @DWC2_LS_SCHEDULE_FRAMES, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %24 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %27 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pmap_unschedule(i64* %19, i32 %20, i32 %21, i32 %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64* @dwc2_get_ls_map(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @pmap_unschedule(i64*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
