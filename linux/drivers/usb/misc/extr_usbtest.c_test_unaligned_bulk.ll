; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_test_unaligned_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_test_unaligned_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.urb = type { i32 }

@simple_callback = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32, i32, i32, i32, i8*)* @test_unaligned_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_unaligned_bulk(%struct.usbtest_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbtest_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.urb*, align 8
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %17 = call i32 @testdev_to_usbdev(%struct.usbtest_dev* %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @simple_callback, align 4
  %22 = call %struct.urb* @usbtest_alloc_urb(i32 %17, i32 %18, i32 %19, i32 %20, i32 1, i32 0, i32 %21)
  store %struct.urb* %22, %struct.urb** %15, align 8
  %23 = load %struct.urb*, %struct.urb** %15, align 8
  %24 = icmp ne %struct.urb* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %37

28:                                               ; preds = %6
  %29 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %30 = load %struct.urb*, %struct.urb** %15, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @simple_io(%struct.usbtest_dev* %29, %struct.urb* %30, i32 %31, i32 0, i32 0, i8* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.urb*, %struct.urb** %15, align 8
  %35 = call i32 @simple_free_urb(%struct.urb* %34)
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local %struct.urb* @usbtest_alloc_urb(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @simple_io(%struct.usbtest_dev*, %struct.urb*, i32, i32, i32, i8*) #1

declare dso_local i32 @simple_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
