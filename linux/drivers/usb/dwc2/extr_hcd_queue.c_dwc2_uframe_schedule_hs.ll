; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_uframe_schedule_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_uframe_schedule_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i64, i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_uframe_schedule_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_uframe_schedule_hs(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %5 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %6 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %9 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %15 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %18 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %24 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %30 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %35 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %38 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %43 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %44 = call i32 @dwc2_hs_pmap_schedule(%struct.dwc2_hsotg* %42, %struct.dwc2_qh* %43, i32 0, i32 0)
  ret i32 %44
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dwc2_hs_pmap_schedule(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
