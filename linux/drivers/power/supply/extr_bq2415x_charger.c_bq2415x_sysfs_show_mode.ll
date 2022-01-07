; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_show_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_show_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq2415x_device = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"auto (\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bq2415x_sysfs_show_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_sysfs_show_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca %struct.bq2415x_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %10)
  store %struct.power_supply* %11, %struct.power_supply** %7, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %13 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.bq2415x_device* %13, %struct.bq2415x_device** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.bq2415x_device*, %struct.bq2415x_device** %8, align 8
  %15 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %18, %3
  %27 = load %struct.bq2415x_device*, %struct.bq2415x_device** %8, align 8
  %28 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %70 [
    i32 128, label %30
    i32 129, label %38
    i32 130, label %46
    i32 131, label %54
    i32 132, label %62
  ]

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %70

38:                                               ; preds = %26
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %70

46:                                               ; preds = %26
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %70

54:                                               ; preds = %26
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %70

62:                                               ; preds = %26
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %26, %62, %54, %46, %38, %30
  %71 = load %struct.bq2415x_device*, %struct.bq2415x_device** %8, align 8
  %72 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  ret i32 %91
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
