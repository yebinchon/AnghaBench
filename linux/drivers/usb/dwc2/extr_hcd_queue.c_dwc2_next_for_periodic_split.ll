; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_next_for_periodic_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_next_for_periodic_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i64, i64, i64, i32 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*, i64)* @dwc2_next_for_periodic_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_next_for_periodic_split(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1, i64 %2) #0 {
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_qh*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %12 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i8* @dwc2_frame_num_dec(i64 %14, i32 1)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %19 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %24 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %30 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %22
  store i64 2, i64* %10, align 8
  br label %35

34:                                               ; preds = %28, %3
  store i64 1, i64* %10, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @dwc2_frame_num_inc(i64 %36, i64 %37)
  %39 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %40 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %43 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @dwc2_frame_num_gt(i64 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %50 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i8* @dwc2_frame_num_dec(i64 %48, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %57 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %35
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i8* @dwc2_frame_num_dec(i64, i32) #1

declare dso_local i64 @dwc2_frame_num_inc(i64, i64) #1

declare dso_local i64 @dwc2_frame_num_gt(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
