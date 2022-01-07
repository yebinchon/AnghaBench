; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_check_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_check_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.xhci_ep_ctx = type { i32 }

@USB_SPEED_LOW = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.urb*, %struct.xhci_ep_ctx*)* @check_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_interval(%struct.xhci_hcd* %0, %struct.urb* %1, %struct.xhci_ep_ctx* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.xhci_ep_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.xhci_ep_ctx* %2, %struct.xhci_ep_ctx** %6, align 8
  %9 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %6, align 8
  %10 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  %13 = call i32 @EP_INTERVAL_TO_UFRAMES(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_SPEED_LOW, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USB_SPEED_FULL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24, %3
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 8
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 @dev_dbg_ratelimited(i32* %43, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %48, i32 %49, i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.urb*, %struct.urb** %5, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.urb*, %struct.urb** %5, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @USB_SPEED_LOW, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %39
  %66 = load %struct.urb*, %struct.urb** %5, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @USB_SPEED_FULL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65, %39
  %74 = load %struct.urb*, %struct.urb** %5, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 8
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %73, %65
  br label %79

79:                                               ; preds = %78, %35
  ret void
}

declare dso_local i32 @EP_INTERVAL_TO_UFRAMES(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg_ratelimited(i32*, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
