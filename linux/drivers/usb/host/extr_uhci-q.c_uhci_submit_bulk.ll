; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_submit_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_submit_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.uhci_qh = type { i64, i32 }

@USB_SPEED_LOW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QH_STATE_ACTIVE = common dso_local global i64 0, align 8
@SKEL_BULK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*)* @uhci_submit_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_submit_bulk(%struct.uhci_hcd* %0, %struct.urb* %1, %struct.uhci_qh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhci_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.uhci_qh*, align 8
  %8 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.uhci_qh* %2, %struct.uhci_qh** %7, align 8
  %9 = load %struct.urb*, %struct.urb** %6, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_SPEED_LOW, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %21 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QH_STATE_ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @SKEL_BULK, align 4
  %27 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %28 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %33 = call i32 @uhci_submit_common(%struct.uhci_hcd* %30, %struct.urb* %31, %struct.uhci_qh* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = call i32 @uhci_add_fsbr(%struct.uhci_hcd* %37, %struct.urb* %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @uhci_submit_common(%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_add_fsbr(%struct.uhci_hcd*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
