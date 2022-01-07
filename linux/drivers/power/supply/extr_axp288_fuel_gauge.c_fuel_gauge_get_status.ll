; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_fg_info = type { i8*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@AXP20X_PWR_INPUT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"PWR STAT read failed:%d\0A\00", align 1
@PS_STAT_VBUS_VALID = common dso_local global i32 0, align 4
@AXP20X_FG_RES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"FG RES read failed: %d\0A\00", align 1
@FG_REP_CAP_VALID = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i8* null, align 8
@PS_STAT_BAT_CHRG_DIR = common dso_local global i32 0, align 4
@BAT_D_CURR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"FG get current failed: %d\0A\00", align 1
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axp288_fg_info*)* @fuel_gauge_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuel_gauge_get_status(%struct.axp288_fg_info* %0) #0 {
  %2 = alloca %struct.axp288_fg_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axp288_fg_info* %0, %struct.axp288_fg_info** %2, align 8
  %7 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %8 = load i32, i32* @AXP20X_PWR_INPUT_STATUS, align 4
  %9 = call i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %14 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %102

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PS_STAT_VBUS_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %89

25:                                               ; preds = %19
  %26 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %27 = load i32, i32* @AXP20X_FG_RES, align 4
  %28 = call i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %33 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %102

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FG_REP_CAP_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %89

44:                                               ; preds = %38
  %45 = load i32, i32* @FG_REP_CAP_VALID, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 100
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %53 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %54 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %102

55:                                               ; preds = %44
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 90
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PS_STAT_BAT_CHRG_DIR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %55
  br label %89

64:                                               ; preds = %58
  %65 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %66 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @BAT_D_CURR, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iio_read_channel_raw(i32 %70, i32* %5)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %76 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %102

81:                                               ; preds = %64
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %86 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %87 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %102

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %63, %43, %24
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @PS_STAT_BAT_CHRG_DIR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %96 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %97 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %102

98:                                               ; preds = %89
  %99 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %100 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %101 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %12, %31, %51, %74, %84, %98, %94
  ret void
}

declare dso_local i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iio_read_channel_raw(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
