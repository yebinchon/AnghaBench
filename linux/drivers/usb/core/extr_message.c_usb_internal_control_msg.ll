; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_internal_control_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_internal_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_ctrlrequest = type { i32 }
%struct.urb = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usb_api_blocking_completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, %struct.usb_ctrlrequest*, i8*, i32, i32)* @usb_internal_control_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_internal_control_msg(%struct.usb_device* %0, i32 %1, %struct.usb_ctrlrequest* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_ctrlrequest*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.usb_ctrlrequest* %2, %struct.usb_ctrlrequest** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %17)
  store %struct.urb* %18, %struct.urb** %14, align 8
  %19 = load %struct.urb*, %struct.urb** %14, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %43

24:                                               ; preds = %6
  %25 = load %struct.urb*, %struct.urb** %14, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %10, align 8
  %29 = bitcast %struct.usb_ctrlrequest* %28 to i8*
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @usb_api_blocking_completion, align 4
  %33 = call i32 @usb_fill_control_urb(%struct.urb* %25, %struct.usb_device* %26, i32 %27, i8* %29, i8* %30, i32 %31, i32 %32, i32* null)
  %34 = load %struct.urb*, %struct.urb** %14, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @usb_start_wait_urb(%struct.urb* %34, i32 %35, i32* %16)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %7, align 4
  br label %43

41:                                               ; preds = %24
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %39, %21
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, %struct.usb_device*, i32, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @usb_start_wait_urb(%struct.urb*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
