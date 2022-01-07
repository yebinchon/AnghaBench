; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_vendor_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_vendor_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }
%struct.usb_device = type { i32 }

@USB_VENDOR_REQUEST_IN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Vendor Request 0x%02x failed for offset 0x%04x with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00usb_vendor_request(%struct.rt2x00_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rt2x00_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.usb_device*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.usb_device* @to_usb_device_intf(i32 %24)
  store %struct.usb_device* %25, %struct.usb_device** %18, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @USB_VENDOR_REQUEST_IN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %31 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %30, i32 0)
  br label %35

32:                                               ; preds = %8
  %33 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %34 = call i32 @usb_sndctrlpipe(%struct.usb_device* %33, i32 0)
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %34, %32 ]
  store i32 %36, i32* %20, align 4
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  %40 = add i64 %37, %39
  store i64 %40, i64* %21, align 8
  %41 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %43 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %42, i32 0, i32 0
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %88

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %76, %49
  %51 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = sdiv i32 %59, 2
  %61 = call i32 @usb_control_msg(%struct.usb_device* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i8* %57, i32 %58, i32 %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %88

65:                                               ; preds = %50
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %67 = load i32, i32* %19, align 4
  %68 = call i64 @rt2x00usb_check_usb_error(%struct.rt2x00_dev* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %73 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %72, i32 0, i32 0
  %74 = call i32 @clear_bit(i32 %71, i32* %73)
  br label %81

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i64, i64* %21, align 8
  %79 = call i64 @time_before(i64 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %50, label %81

81:                                               ; preds = %76, %70
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @rt2x00_err(%struct.rt2x00_dev* %82, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %19, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %81, %64, %46
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local %struct.usb_device* @to_usb_device_intf(i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @rt2x00usb_check_usb_error(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
