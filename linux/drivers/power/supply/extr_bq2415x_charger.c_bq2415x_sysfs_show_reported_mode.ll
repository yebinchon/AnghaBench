; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_show_reported_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_show_reported_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq2415x_device = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"off\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"host\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dedicated\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"boost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bq2415x_sysfs_show_reported_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_sysfs_show_reported_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.power_supply*, align 8
  %9 = alloca %struct.bq2415x_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %10)
  store %struct.power_supply* %11, %struct.power_supply** %8, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %8, align 8
  %13 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.bq2415x_device* %13, %struct.bq2415x_device** %9, align 8
  %14 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %15 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %23 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %40 [
    i32 128, label %25
    i32 129, label %28
    i32 130, label %31
    i32 131, label %34
    i32 132, label %37
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %21
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %21
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %37, %34, %31, %28, %25, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
