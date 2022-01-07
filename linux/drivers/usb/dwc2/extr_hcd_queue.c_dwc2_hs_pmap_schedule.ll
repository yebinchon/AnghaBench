; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_hs_pmap_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_hs_pmap_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i32, %struct.dwc2_hs_transfer_time* }
%struct.dwc2_hs_transfer_time = type { i32, i32 }

@DWC2_HS_PERIODIC_US_PER_UFRAME = common dso_local global i32 0, align 4
@DWC2_HS_SCHEDULE_UFRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32, i32)* @dwc2_hs_pmap_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hs_pmap_schedule(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc2_hsotg*, align 8
  %7 = alloca %struct.dwc2_qh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dwc2_hs_transfer_time*, align 8
  %11 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %6, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dwc2_qh*, %struct.dwc2_qh** %7, align 8
  %13 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %12, i32 0, i32 1
  %14 = load %struct.dwc2_hs_transfer_time*, %struct.dwc2_hs_transfer_time** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dwc2_hs_transfer_time, %struct.dwc2_hs_transfer_time* %14, i64 %16
  store %struct.dwc2_hs_transfer_time* %17, %struct.dwc2_hs_transfer_time** %10, align 8
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %19 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DWC2_HS_PERIODIC_US_PER_UFRAME, align 4
  %22 = load i32, i32* @DWC2_HS_SCHEDULE_UFRAMES, align 4
  %23 = load %struct.dwc2_hs_transfer_time*, %struct.dwc2_hs_transfer_time** %10, align 8
  %24 = getelementptr inbounds %struct.dwc2_hs_transfer_time, %struct.dwc2_hs_transfer_time* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dwc2_qh*, %struct.dwc2_qh** %7, align 8
  %27 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dwc2_hs_transfer_time*, %struct.dwc2_hs_transfer_time** %10, align 8
  %30 = getelementptr inbounds %struct.dwc2_hs_transfer_time, %struct.dwc2_hs_transfer_time* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pmap_schedule(i32 %20, i32 %21, i32 %22, i32 %25, i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.dwc2_hs_transfer_time*, %struct.dwc2_hs_transfer_time** %10, align 8
  %41 = getelementptr inbounds %struct.dwc2_hs_transfer_time, %struct.dwc2_hs_transfer_time* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %36
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @pmap_schedule(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
