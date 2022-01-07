; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_urb_set_pipeinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_urb_set_pipeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_hcd_urb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i64, i64, i64, i64 }

@USB_ENDPOINT_XFER_BULK = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"addr=%d, ep_num=%d, ep_dir=%1x, ep_type=%1x, maxp=%d (%d mult)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_hcd_urb*, i64, i64, i64, i64, i8*, i8*)* @dwc2_hcd_urb_set_pipeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hcd_urb_set_pipeinfo(%struct.dwc2_hsotg* %0, %struct.dwc2_hcd_urb* %1, i64 %2, i64 %3, i64 %4, i64 %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.dwc2_hsotg*, align 8
  %10 = alloca %struct.dwc2_hcd_urb*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %9, align 8
  store %struct.dwc2_hcd_urb* %1, %struct.dwc2_hcd_urb** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %17 = call i64 (...) @dbg_perio()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %8
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @USB_ENDPOINT_XFER_BULK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @USB_ENDPOINT_XFER_CONTROL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23, %19, %8
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %9, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = call i32 @dev_vdbg(i32 %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32, i64 %33, i64 %34, i8* %35, i8* %36)
  br label %38

38:                                               ; preds = %27, %23
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %10, align 8
  %41 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  store i64 %39, i64* %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %10, align 8
  %45 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %10, align 8
  %49 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %10, align 8
  %53 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i64 %51, i64* %54, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %10, align 8
  %57 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %10, align 8
  %61 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  ret void
}

declare dso_local i64 @dbg_perio(...) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i64, i64, i64, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
