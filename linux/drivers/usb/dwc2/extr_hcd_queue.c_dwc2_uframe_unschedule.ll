; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_uframe_unschedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_uframe_unschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"QH=%p Unscheduled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_uframe_unschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_uframe_unschedule(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %9 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dwc2_hs_pmap_unschedule(%struct.dwc2_hsotg* %13, %struct.dwc2_qh* %14, i32 %15)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6

20:                                               ; preds = %6
  %21 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %22 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %27 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %28 = call i32 @dwc2_ls_pmap_unschedule(%struct.dwc2_hsotg* %26, %struct.dwc2_qh* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %31 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %32 = call i32 @dwc2_sch_dbg(%struct.dwc2_hsotg* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.dwc2_qh* %31)
  ret void
}

declare dso_local i32 @dwc2_hs_pmap_unschedule(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32) #1

declare dso_local i32 @dwc2_ls_pmap_unschedule(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_sch_dbg(%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
