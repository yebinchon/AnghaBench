; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_bat_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_bat_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max8925_power_info = type { i32, i32, i32, i32 }

@MEASURE_VMBATT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@MEASURE_ISNS = common dso_local global i32 0, align 4
@MAX8925_CHG_STATUS = common dso_local global i32 0, align 4
@MAX8925_CHG_STAT_MODE_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@MAX8925_CHG_STAT_EN_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max8925_bat_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_bat_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.max8925_power_info*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.max8925_power_info* @dev_get_drvdata(i32 %12)
  store %struct.max8925_power_info* %13, %struct.max8925_power_info** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %142 [
    i32 130, label %15
    i32 128, label %21
    i32 131, label %41
    i32 132, label %69
    i32 129, label %101
  ]

15:                                               ; preds = %3
  %16 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %17 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 %18, i32* %20, align 4
  br label %145

21:                                               ; preds = %3
  %22 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %23 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %28 = load i32, i32* @MEASURE_VMBATT, align 4
  %29 = call i32 @start_measure(%struct.max8925_power_info* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 2000
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %8, align 4
  br label %145

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %145

41:                                               ; preds = %3
  %42 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %43 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %48 = load i32, i32* @MEASURE_ISNS, align 4
  %49 = call i32 @start_measure(%struct.max8925_power_info* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 6250
  %55 = sub nsw i32 %54, 3125
  store i32 %55, i32* %8, align 4
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i32*
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %52
  store i32 0, i32* %8, align 4
  br label %145

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* @ENODATA, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %145

69:                                               ; preds = %3
  %70 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %71 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENODATA, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %145

77:                                               ; preds = %69
  %78 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %79 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MAX8925_CHG_STATUS, align 4
  %82 = call i32 @max8925_reg_read(i32 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @MAX8925_CHG_STAT_MODE_MASK, align 4
  %85 = and i32 %83, %84
  %86 = ashr i32 %85, 2
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  switch i32 %87, label %100 [
    i32 1, label %88
    i32 0, label %92
    i32 2, label %92
    i32 3, label %96
  ]

88:                                               ; preds = %77
  %89 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %90 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %91 = bitcast %union.power_supply_propval* %90 to i32*
  store i32 %89, i32* %91, align 4
  br label %100

92:                                               ; preds = %77, %77
  %93 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 4
  %94 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %95 = bitcast %union.power_supply_propval* %94 to i32*
  store i32 %93, i32* %95, align 4
  br label %100

96:                                               ; preds = %77
  %97 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %98 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %99 = bitcast %union.power_supply_propval* %98 to i32*
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %77, %96, %92, %88
  store i32 0, i32* %8, align 4
  br label %145

101:                                              ; preds = %3
  %102 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %103 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @ENODATA, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %145

109:                                              ; preds = %101
  %110 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %111 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MAX8925_CHG_STATUS, align 4
  %114 = call i32 @max8925_reg_read(i32 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %116 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %109
  %120 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %121 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119, %109
  %125 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %126 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %127 = bitcast %union.power_supply_propval* %126 to i32*
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @MAX8925_CHG_STAT_EN_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %134 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %135 = bitcast %union.power_supply_propval* %134 to i32*
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %124
  br label %141

137:                                              ; preds = %119
  %138 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %139 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %140 = bitcast %union.power_supply_propval* %139 to i32*
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %136
  store i32 0, i32* %8, align 4
  br label %145

142:                                              ; preds = %3
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %141, %106, %100, %74, %66, %64, %38, %32, %15
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local %struct.max8925_power_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @start_measure(%struct.max8925_power_info*, i32) #1

declare dso_local i32 @max8925_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
