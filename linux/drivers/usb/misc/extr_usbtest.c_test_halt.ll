; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_test_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_test_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.urb = type { i32, i32 }

@USB_REQ_SET_FEATURE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ep %02x couldn't set halt, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ep %02x couldn't clear halt, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32, %struct.urb*)* @test_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_halt(%struct.usbtest_dev* %0, i32 %1, %struct.urb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbtest_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.urb* %2, %struct.urb** %7, align 8
  %10 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.urb*, %struct.urb** %7, align 8
  %13 = call i32 @verify_not_halted(%struct.usbtest_dev* %10, i32 %11, %struct.urb* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %90

18:                                               ; preds = %3
  %19 = load %struct.urb*, %struct.urb** %7, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.urb*, %struct.urb** %7, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_sndctrlpipe(i32 %24, i32 0)
  %26 = load i32, i32* @USB_REQ_SET_FEATURE, align 4
  %27 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %28 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %31 = call i32 @usb_control_msg(i32 %21, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32* null, i32 0, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ERROR(%struct.usbtest_dev* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %90

40:                                               ; preds = %18
  %41 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.urb*, %struct.urb** %7, align 8
  %44 = call i32 @verify_halted(%struct.usbtest_dev* %41, i32 %42, %struct.urb* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load %struct.urb*, %struct.urb** %7, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.urb*, %struct.urb** %7, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_clear_halt(i32 %50, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ERROR(%struct.usbtest_dev* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %47
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %90

64:                                               ; preds = %40
  %65 = load %struct.urb*, %struct.urb** %7, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.urb*, %struct.urb** %7, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_clear_halt(i32 %67, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ERROR(%struct.usbtest_dev* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %90

80:                                               ; preds = %64
  %81 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.urb*, %struct.urb** %7, align 8
  %84 = call i32 @verify_not_halted(%struct.usbtest_dev* %81, i32 %82, %struct.urb* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %87, %74, %62, %34, %16
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @verify_not_halted(%struct.usbtest_dev*, i32, %struct.urb*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, i32, i32) #1

declare dso_local i32 @verify_halted(%struct.usbtest_dev*, i32, %struct.urb*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
