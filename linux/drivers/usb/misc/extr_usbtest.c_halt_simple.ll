; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_halt_simple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_halt_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i64, i64 }
%struct.urb = type { i64 }
%struct.usb_device = type { i64 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*)* @halt_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halt_simple(%struct.usbtest_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtest_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_device*, align 8
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %9 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %8)
  store %struct.usb_device* %9, %struct.usb_device** %7, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_SUPER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %17 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %16, i32 0, i32 1024, i32 0)
  store %struct.urb* %17, %struct.urb** %6, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %20 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %19, i32 0, i32 512, i32 0)
  store %struct.urb* %20, %struct.urb** %6, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.urb*, %struct.urb** %6, align 8
  %23 = icmp eq %struct.urb* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %76

27:                                               ; preds = %21
  %28 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %29 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %34 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @usb_pipeendpoint(i64 %35)
  %37 = load i32, i32* @USB_DIR_IN, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %40 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.urb*, %struct.urb** %6, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.urb*, %struct.urb** %6, align 8
  %47 = call i32 @test_halt(%struct.usbtest_dev* %44, i32 %45, %struct.urb* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %72

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %54 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %59 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @usb_pipeendpoint(i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %63 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.urb*, %struct.urb** %6, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = call i32 @test_halt(%struct.usbtest_dev* %67, i32 %68, %struct.urb* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %57, %52
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.urb*, %struct.urb** %6, align 8
  %74 = call i32 @simple_free_urb(%struct.urb* %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %24
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local %struct.urb* @simple_alloc_urb(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @usb_pipeendpoint(i64) #1

declare dso_local i32 @test_halt(%struct.usbtest_dev*, i32, %struct.urb*) #1

declare dso_local i32 @simple_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
