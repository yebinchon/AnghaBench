; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_hcd_qh_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_hcd_qh_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_qh = type { i32 }
%struct.dwc2_hsotg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_hcd_urb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dwc2_qh* @dwc2_hcd_qh_create(%struct.dwc2_hsotg* %0, %struct.dwc2_hcd_urb* %1, i32 %2) #0 {
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_hcd_urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qh*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_hcd_urb* %1, %struct.dwc2_hcd_urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %6, align 8
  %10 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.dwc2_qh* null, %struct.dwc2_qh** %4, align 8
  br label %43

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.dwc2_qh* @kzalloc(i32 4, i32 %15)
  store %struct.dwc2_qh* %16, %struct.dwc2_qh** %8, align 8
  %17 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %18 = icmp ne %struct.dwc2_qh* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.dwc2_qh* null, %struct.dwc2_qh** %4, align 8
  br label %43

20:                                               ; preds = %14
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %22 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %23 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dwc2_qh_init(%struct.dwc2_hsotg* %21, %struct.dwc2_qh* %22, %struct.dwc2_hcd_urb* %23, i32 %24)
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %27 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %33 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @dwc2_hcd_qh_init_ddma(%struct.dwc2_hsotg* %32, %struct.dwc2_qh* %33, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %39 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %40 = call i32 @dwc2_hcd_qh_free(%struct.dwc2_hsotg* %38, %struct.dwc2_qh* %39)
  store %struct.dwc2_qh* null, %struct.dwc2_qh** %4, align 8
  br label %43

41:                                               ; preds = %31, %20
  %42 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  store %struct.dwc2_qh* %42, %struct.dwc2_qh** %4, align 8
  br label %43

43:                                               ; preds = %41, %37, %19, %13
  %44 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  ret %struct.dwc2_qh* %44
}

declare dso_local %struct.dwc2_qh* @kzalloc(i32, i32) #1

declare dso_local i32 @dwc2_qh_init(%struct.dwc2_hsotg*, %struct.dwc2_qh*, %struct.dwc2_hcd_urb*, i32) #1

declare dso_local i64 @dwc2_hcd_qh_init_ddma(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32) #1

declare dso_local i32 @dwc2_hcd_qh_free(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
