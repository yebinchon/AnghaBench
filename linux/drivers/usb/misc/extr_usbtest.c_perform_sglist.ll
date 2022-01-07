; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_perform_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_perform_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.usb_sg_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.usb_device = type { i64 }
%struct.sg_timeout = type { i32, %struct.usb_sg_request* }

@sg_timeout = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@INTERRUPT_RATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SIMPLE_IO_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"perform_sglist failed, iterations left %d, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32, i32, %struct.usb_sg_request*, %struct.scatterlist*, i32)* @perform_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_sglist(%struct.usbtest_dev* %0, i32 %1, i32 %2, %struct.usb_sg_request* %3, %struct.scatterlist* %4, i32 %5) #0 {
  %7 = alloca %struct.usbtest_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_sg_request*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sg_timeout, align 8
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.usb_sg_request* %3, %struct.usb_sg_request** %10, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %17 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %16)
  store %struct.usb_device* %17, %struct.usb_device** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = getelementptr inbounds %struct.sg_timeout, %struct.sg_timeout* %15, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.sg_timeout, %struct.sg_timeout* %15, i32 0, i32 1
  %20 = load %struct.usb_sg_request*, %struct.usb_sg_request** %10, align 8
  store %struct.usb_sg_request* %20, %struct.usb_sg_request** %19, align 8
  %21 = getelementptr inbounds %struct.sg_timeout, %struct.sg_timeout* %15, i32 0, i32 0
  %22 = load i32, i32* @sg_timeout, align 4
  %23 = call i32 @timer_setup_on_stack(i32* %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %75, %6
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %8, align 4
  %30 = icmp ugt i32 %28, 0
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %78

33:                                               ; preds = %31
  %34 = load %struct.usb_sg_request*, %struct.usb_sg_request** %10, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @USB_SPEED_HIGH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @INTERRUPT_RATE, align 4
  %44 = shl i32 %43, 3
  br label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @INTERRUPT_RATE, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i32 [ %44, %42 ], [ %46, %45 ]
  %49 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @usb_sg_init(%struct.usb_sg_request* %34, %struct.usb_device* %35, i32 %36, i32 %48, %struct.scatterlist* %49, i32 %50, i32 0, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %78

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.sg_timeout, %struct.sg_timeout* %15, i32 0, i32 0
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i32, i32* @SIMPLE_IO_TIMEOUT, align 4
  %60 = call i64 @msecs_to_jiffies(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @mod_timer(i32* %57, i64 %61)
  %63 = load %struct.usb_sg_request*, %struct.usb_sg_request** %10, align 8
  %64 = call i32 @usb_sg_wait(%struct.usb_sg_request* %63)
  %65 = getelementptr inbounds %struct.sg_timeout, %struct.sg_timeout* %15, i32 0, i32 0
  %66 = call i32 @del_timer_sync(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %75

71:                                               ; preds = %56
  %72 = load %struct.usb_sg_request*, %struct.usb_sg_request** %10, align 8
  %73 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = getelementptr inbounds %struct.sg_timeout, %struct.sg_timeout* %15, i32 0, i32 0
  %77 = call i32 @destroy_timer_on_stack(i32* %76)
  br label %24

78:                                               ; preds = %55, %31
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @ERROR(%struct.usbtest_dev* %82, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* %14, align 4
  ret i32 %87
}

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @timer_setup_on_stack(i32*, i32, i32) #1

declare dso_local i32 @usb_sg_init(%struct.usb_sg_request*, %struct.usb_device*, i32, i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usb_sg_wait(%struct.usb_sg_request*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @destroy_timer_on_stack(i32*) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
