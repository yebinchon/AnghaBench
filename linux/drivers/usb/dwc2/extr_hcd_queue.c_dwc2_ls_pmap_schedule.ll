; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_ls_pmap_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_ls_pmap_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i32, i32, i32 }

@DWC2_US_PER_SLICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DWC2_LS_PERIODIC_SLICES_PER_FRAME = common dso_local global i32 0, align 4
@DWC2_LS_SCHEDULE_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32)* @dwc2_ls_pmap_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_ls_pmap_schedule(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_qh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %12 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DWC2_US_PER_SLICE, align 4
  %15 = call i32 @DIV_ROUND_UP(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %17 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %18 = call i64* @dwc2_get_ls_map(%struct.dwc2_hsotg* %16, %struct.dwc2_qh* %17)
  store i64* %18, i64** %9, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load i64*, i64** %9, align 8
  %26 = load i32, i32* @DWC2_LS_PERIODIC_SLICES_PER_FRAME, align 4
  %27 = load i32, i32* @DWC2_LS_SCHEDULE_FRAMES, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %30 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pmap_schedule(i64* %25, i32 %26, i32 %27, i32 %28, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %41 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %36, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64* @dwc2_get_ls_map(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @pmap_schedule(i64*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
