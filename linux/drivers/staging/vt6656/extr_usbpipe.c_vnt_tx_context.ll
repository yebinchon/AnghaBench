; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_usbpipe.c_vnt_tx_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_usbpipe.c_vnt_tx_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vnt_usb_send_context = type { i32, i32, i32, %struct.urb* }
%struct.urb = type { i32 }

@DEVICE_FLAGS_DISCONNECTED = common dso_local global i32 0, align 4
@STATUS_RESOURCES = common dso_local global i32 0, align 4
@vnt_tx_context_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Submit Tx URB failed %d\0A\00", align 1
@STATUS_FAILURE = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_tx_context(%struct.vnt_private* %0, %struct.vnt_usb_send_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca %struct.vnt_usb_send_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store %struct.vnt_usb_send_context* %1, %struct.vnt_usb_send_context** %5, align 8
  %8 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %9 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %8, i32 0, i32 3
  %10 = load %struct.urb*, %struct.urb** %9, align 8
  store %struct.urb* %10, %struct.urb** %7, align 8
  %11 = load i32, i32* @DEVICE_FLAGS_DISCONNECTED, align 4
  %12 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %13 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %18 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i32, i32* @STATUS_RESOURCES, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.urb*, %struct.urb** %7, align 8
  %22 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %23 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %26 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @usb_sndbulkpipe(%struct.TYPE_3__* %27, i32 3)
  %29 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %30 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %33 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @vnt_tx_context_complete, align 4
  %36 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %37 = call i32 @usb_fill_bulk_urb(%struct.urb* %21, %struct.TYPE_3__* %24, i32 %28, i32 %31, i32 %34, i32 %35, %struct.vnt_usb_send_context* %36)
  %38 = load %struct.urb*, %struct.urb** %7, align 8
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i32 @usb_submit_urb(%struct.urb* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %20
  %44 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %45 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %51 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* @STATUS_FAILURE, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %20
  %54 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %43, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.vnt_usb_send_context*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
