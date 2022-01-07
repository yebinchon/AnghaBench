; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_usbpipe.c_vnt_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_usbpipe.c_vnt_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vnt_rcb = type { i32, i32, %struct.urb* }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"rcb->skb is null\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_TOTAL_SIZE_WITH_ALL_HEADERS = common dso_local global i32 0, align 4
@vnt_submit_rx_urb_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Submit Rx URB failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_submit_rx_urb(%struct.vnt_private* %0, %struct.vnt_rcb* %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca %struct.vnt_rcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store %struct.vnt_rcb* %1, %struct.vnt_rcb** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.vnt_rcb*, %struct.vnt_rcb** %4, align 8
  %8 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %7, i32 0, i32 2
  %9 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %9, %struct.urb** %6, align 8
  %10 = load %struct.vnt_rcb*, %struct.vnt_rcb** %4, align 8
  %11 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %16 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %25 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @usb_rcvbulkpipe(%struct.TYPE_3__* %29, i32 2)
  %31 = load %struct.vnt_rcb*, %struct.vnt_rcb** %4, align 8
  %32 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vnt_rcb*, %struct.vnt_rcb** %4, align 8
  %35 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @skb_tailroom(i32 %36)
  %38 = call i32 @skb_put(i32 %33, i32 %37)
  %39 = load i32, i32* @MAX_TOTAL_SIZE_WITH_ALL_HEADERS, align 4
  %40 = load i32, i32* @vnt_submit_rx_urb_complete, align 4
  %41 = load %struct.vnt_rcb*, %struct.vnt_rcb** %4, align 8
  %42 = call i32 @usb_fill_bulk_urb(%struct.urb* %23, %struct.TYPE_3__* %26, i32 %30, i32 %38, i32 %39, i32 %40, %struct.vnt_rcb* %41)
  %43 = load %struct.urb*, %struct.urb** %6, align 8
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i32 @usb_submit_urb(%struct.urb* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %22
  %49 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %50 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %58

55:                                               ; preds = %22
  %56 = load %struct.vnt_rcb*, %struct.vnt_rcb** %4, align 8
  %57 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %48, %14
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.vnt_rcb*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @skb_put(i32, i32) #1

declare dso_local i32 @skb_tailroom(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
