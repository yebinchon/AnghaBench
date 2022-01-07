; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_config_charger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_config_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24735 = type { %struct.TYPE_2__*, %struct.bq24735_platform* }
%struct.TYPE_2__ = type { i32 }
%struct.bq24735_platform = type { i32, i32, i32, i64 }

@BQ24735_CHARGE_CURRENT_MASK = common dso_local global i32 0, align 4
@BQ24735_CHARGE_CURRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to write charger current : %d\0A\00", align 1
@BQ24735_CHARGE_VOLTAGE_MASK = common dso_local global i32 0, align 4
@BQ24735_CHARGE_VOLTAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to write charger voltage : %d\0A\00", align 1
@BQ24735_INPUT_CURRENT_MASK = common dso_local global i32 0, align 4
@BQ24735_INPUT_CURRENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to write input current : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24735*)* @bq24735_config_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24735_config_charger(%struct.bq24735* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq24735*, align 8
  %4 = alloca %struct.bq24735_platform*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bq24735* %0, %struct.bq24735** %3, align 8
  %7 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %8 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %7, i32 0, i32 1
  %9 = load %struct.bq24735_platform*, %struct.bq24735_platform** %8, align 8
  store %struct.bq24735_platform* %9, %struct.bq24735_platform** %4, align 8
  %10 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %11 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %17 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %22 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BQ24735_CHARGE_CURRENT_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %27 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* @BQ24735_CHARGE_CURRENT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @bq24735_write_word(%struct.TYPE_2__* %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %20
  %35 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %36 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %100

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %15
  %44 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %45 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %50 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BQ24735_CHARGE_VOLTAGE_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %6, align 4
  %54 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %55 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* @BQ24735_CHARGE_VOLTAGE, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @bq24735_write_word(%struct.TYPE_2__* %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %48
  %63 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %64 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %100

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %73 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %78 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BQ24735_INPUT_CURRENT_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %6, align 4
  %82 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %83 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* @BQ24735_INPUT_CURRENT, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @bq24735_write_word(%struct.TYPE_2__* %84, i32 %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %76
  %91 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %92 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %100

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98, %71
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %90, %62, %34, %14
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @bq24735_write_word(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
