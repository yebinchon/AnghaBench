; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-au1xxx.c_au1xtoy_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-au1xxx.c_au1xtoy_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rtc_device = type { i32 }

@AU1000_SYS_CNTRCTRL = common dso_local global i32 0, align 4
@CNTR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"counters not working; aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@AU1000_SYS_TOYTRIM = common dso_local global i32 0, align 4
@SYS_CNTRL_T0S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"timeout waiting for access\0A\00", align 1
@SYS_CNTRL_C0S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"rtc-au1xxx\00", align 1
@au1xtoy_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1xtoy_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xtoy_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @AU1000_SYS_CNTRCTRL, align 4
  %8 = call i32 @alchemy_rdsys(i32 %7)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @CNTR_OK, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %75

20:                                               ; preds = %1
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @AU1000_SYS_TOYTRIM, align 4
  %24 = call i32 @alchemy_rdsys(i32 %23)
  %25 = icmp ne i32 %24, 32767
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  store i64 1048576, i64* %5, align 8
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* @AU1000_SYS_CNTRCTRL, align 4
  %29 = call i32 @alchemy_rdsys(i32 %28)
  %30 = load i32, i32* @SYS_CNTRL_T0S, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ false, %27 ], [ %36, %33 ]
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call i32 @msleep(i32 1)
  br label %27

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %75

48:                                               ; preds = %41
  %49 = load i32, i32* @AU1000_SYS_TOYTRIM, align 4
  %50 = call i32 @alchemy_wrsys(i32 32767, i32 %49)
  br label %51

51:                                               ; preds = %48, %20
  br label %52

52:                                               ; preds = %58, %51
  %53 = load i32, i32* @AU1000_SYS_CNTRCTRL, align 4
  %54 = call i32 @alchemy_rdsys(i32 %53)
  %55 = load i32, i32* @SYS_CNTRL_C0S, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @msleep(i32 1)
  br label %52

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* @THIS_MODULE, align 4
  %64 = call %struct.rtc_device* @devm_rtc_device_register(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* @au1xtoy_rtc_ops, i32 %63)
  store %struct.rtc_device* %64, %struct.rtc_device** %4, align 8
  %65 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %66 = call i64 @IS_ERR(%struct.rtc_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %70 = call i32 @PTR_ERR(%struct.rtc_device* %69)
  store i32 %70, i32* %6, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %72, %struct.rtc_device* %73)
  store i32 0, i32* %2, align 4
  br label %77

75:                                               ; preds = %68, %44, %14
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @alchemy_rdsys(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @alchemy_wrsys(i32, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
