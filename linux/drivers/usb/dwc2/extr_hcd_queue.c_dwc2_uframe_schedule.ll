; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_uframe_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_uframe_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i64, i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"QH=%p Failed to schedule %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_uframe_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_uframe_schedule(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %6 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %7 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @USB_SPEED_HIGH, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %13 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %14 = call i32 @dwc2_uframe_schedule_hs(%struct.dwc2_hsotg* %12, %struct.dwc2_qh* %13)
  store i32 %14, i32* %5, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %17 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %22 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %23 = call i32 @dwc2_uframe_schedule_ls(%struct.dwc2_hsotg* %21, %struct.dwc2_qh* %22)
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %26 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %27 = call i32 @dwc2_uframe_schedule_split(%struct.dwc2_hsotg* %25, %struct.dwc2_qh* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %34 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dwc2_sch_dbg(%struct.dwc2_hsotg* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.dwc2_qh* %34, i32 %35)
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %40 = call i32 @dwc2_qh_schedule_print(%struct.dwc2_hsotg* %38, %struct.dwc2_qh* %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @dwc2_uframe_schedule_hs(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_uframe_schedule_ls(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_uframe_schedule_split(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_sch_dbg(%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*, i32) #1

declare dso_local i32 @dwc2_qh_schedule_print(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
