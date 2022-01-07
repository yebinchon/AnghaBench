; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_debug.c_usb_decode_set_clear_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_debug.c_usb_decode_set_clear_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s Device Feature(%s%s)\00", align 1
@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@USB_DEVICE_TEST_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s Interface Feature(%s)\00", align 1
@USB_INTRF_FUNC_SUSPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Function Suspend\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s Endpoint Feature(%s ep%d%s)\00", align 1
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"Halt\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i8*, i64)* @usb_decode_set_clear_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_decode_set_clear_feature(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @USB_RECIP_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %74 [
    i32 130, label %16
    i32 128, label %36
    i32 129, label %50
  ]

16:                                               ; preds = %6
  %17 = load i8*, i8** %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @usb_decode_device_feature(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @USB_DEVICE_TEST_MODE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @usb_decode_test_mode(i32 %30)
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i8* [ %31, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %32 ]
  %35 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %25, i8* %34)
  br label %74

36:                                               ; preds = %6
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @USB_INTRF_FUNC_SUSPEND, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %49 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %43, i8* %48)
  br label %74

50:                                               ; preds = %6
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @USB_DIR_IN, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @USB_DIR_IN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %73 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %57, i8* %62, i32 %66, i8* %72)
  br label %74

74:                                               ; preds = %6, %50, %36, %33
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, ...) #1

declare dso_local i8* @usb_decode_device_feature(i32) #1

declare dso_local i8* @usb_decode_test_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
