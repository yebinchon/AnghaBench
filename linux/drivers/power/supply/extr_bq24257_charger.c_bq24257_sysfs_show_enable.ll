; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_sysfs_show_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_sysfs_show_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq24257_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"high_impedance_enable\00", align 1
@F_HZ_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sysoff_enable\00", align 1
@F_SYSOFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bq24257_sysfs_show_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_sysfs_show_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.power_supply*, align 8
  %9 = alloca %struct.bq24257_device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %11)
  store %struct.power_supply* %12, %struct.power_supply** %8, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %8, align 8
  %14 = call %struct.bq24257_device* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.bq24257_device* %14, %struct.bq24257_device** %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %23 = load i32, i32* @F_HZ_MODE, align 4
  %24 = call i32 @bq24257_field_read(%struct.bq24257_device* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  br label %40

25:                                               ; preds = %3
  %26 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %27 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.bq24257_device*, %struct.bq24257_device** %9, align 8
  %34 = load i32, i32* @F_SYSOFF, align 4
  %35 = call i32 @bq24257_field_read(%struct.bq24257_device* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  br label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %50

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @scnprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %43, %36
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bq24257_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bq24257_field_read(%struct.bq24257_device*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
