; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_is_good_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_is_good_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i64 }
%struct.usb_config_descriptor = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"bogus config descriptor length\0A\00", align 1
@realworld = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"high bit of config attributes not set\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"reserved config bits set\0A\00", align 1
@TBUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"bogus config descriptor read size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32)* @is_good_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_good_config(%struct.usbtest_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbtest_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_config_descriptor*, align 8
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 16
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

11:                                               ; preds = %2
  %12 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %13 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.usb_config_descriptor*
  store %struct.usb_config_descriptor* %15, %struct.usb_config_descriptor** %6, align 8
  %16 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %17 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %49 [
    i32 129, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %11, %11
  %20 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %21 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 9
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %26 = call i32 @ERROR(%struct.usbtest_dev* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

27:                                               ; preds = %19
  %28 = load i32, i32* @realworld, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %32 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %38 = call i32 @ERROR(%struct.usbtest_dev* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

39:                                               ; preds = %30, %27
  %40 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %41 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 31
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %47 = call i32 @ERROR(%struct.usbtest_dev* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

48:                                               ; preds = %39
  br label %50

49:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %69

50:                                               ; preds = %48
  %51 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %52 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %69

58:                                               ; preds = %50
  %59 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %60 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load i32, i32* @TBUF_SIZE, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %69

66:                                               ; preds = %58
  %67 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %68 = call i32 @ERROR(%struct.usbtest_dev* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %65, %57, %49, %45, %36, %24, %10
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
