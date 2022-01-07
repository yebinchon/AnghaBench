; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_check_validity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-eoz9.c_abeoz9_check_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.abeoz9_rtc_data = type { %struct.regmap* }
%struct.regmap = type { i32 }

@ABEOZ9_REG_CTRL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to get CTRL_STATUS register (%d)\0A\00", align 1
@ABEOZ9_REG_CTRL_STATUS_PON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"power-on reset detected, date is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ABEOZ9_REG_CTRL_STATUS_V1F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"voltage drops below VLOW1 threshold, date is invalid\0A\00", align 1
@ABEOZ9_REG_CTRL_STATUS_V2F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"voltage drops below VLOW2 threshold, date is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @abeoz9_check_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abeoz9_check_validity(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.abeoz9_rtc_data*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.abeoz9_rtc_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.abeoz9_rtc_data* %9, %struct.abeoz9_rtc_data** %4, align 8
  %10 = load %struct.abeoz9_rtc_data*, %struct.abeoz9_rtc_data** %4, align 8
  %11 = getelementptr inbounds %struct.abeoz9_rtc_data, %struct.abeoz9_rtc_data* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load %struct.regmap*, %struct.regmap** %5, align 8
  %14 = load i32, i32* @ABEOZ9_REG_CTRL_STATUS, align 4
  %15 = call i32 @regmap_read(%struct.regmap* %13, i32 %14, i32* %7)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ABEOZ9_REG_CTRL_STATUS_PON, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ABEOZ9_REG_CTRL_STATUS_V1F, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = call i32 @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ABEOZ9_REG_CTRL_STATUS_V2F, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %48, %38, %28, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.abeoz9_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
