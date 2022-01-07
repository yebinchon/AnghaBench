; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max1721x_battery.c_max1721x_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max1721x_battery.c_max1721x_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max17211_device_info = type { i32, i32, i32, i32, i64 }

@MAX172XX_REG_STATUS = common dso_local global i32 0, align 4
@MAX172XX_BAT_PRESENT = common dso_local global i32 0, align 4
@MAX172XX_REG_REPSOC = common dso_local global i32 0, align 4
@MAX172XX_REG_BATT = common dso_local global i32 0, align 4
@MAX172XX_REG_DESIGNCAP = common dso_local global i32 0, align 4
@MAX172XX_REG_REPCAP = common dso_local global i32 0, align 4
@MAX172XX_REG_TTE = common dso_local global i32 0, align 4
@MAX172XX_REG_TTF = common dso_local global i32 0, align 4
@MAX172XX_REG_TEMP = common dso_local global i32 0, align 4
@MAX172XX_REG_CURRENT = common dso_local global i32 0, align 4
@MAX172XX_REG_AVGCURRENT = common dso_local global i32 0, align 4
@MAX1721X_REG_DEV_STR = common dso_local global i32 0, align 4
@MAX1721X_REG_MFG_STR = common dso_local global i32 0, align 4
@MAX1721X_REG_SER_HEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max1721x_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1721x_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.max17211_device_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = call %struct.max17211_device_info* @to_device_info(%struct.power_supply* %10)
  store %struct.max17211_device_info* %11, %struct.max17211_device_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %169 [
    i32 133, label %13
    i32 140, label %32
    i32 128, label %42
    i32 138, label %52
    i32 139, label %63
    i32 130, label %74
    i32 129, label %85
    i32 131, label %96
    i32 136, label %106
    i32 137, label %121
    i32 134, label %136
    i32 135, label %147
    i32 132, label %158
  ]

13:                                               ; preds = %3
  %14 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %15 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX172XX_REG_STATUS, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %28

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MAX172XX_BAT_PRESENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %21, %20
  %29 = phi i32 [ 0, %20 ], [ %27, %21 ]
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %172

32:                                               ; preds = %3
  %33 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %34 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAX172XX_REG_REPSOC, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @max172xx_percent_to_ps(i32 %38)
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %172

42:                                               ; preds = %3
  %43 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %44 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAX172XX_REG_BATT, align 4
  %47 = call i32 @regmap_read(i32 %45, i32 %46, i32* %8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @max172xx_voltage_to_ps(i32 %48)
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %172

52:                                               ; preds = %3
  %53 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %54 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAX172XX_REG_DESIGNCAP, align 4
  %57 = call i32 @regmap_read(i32 %55, i32 %56, i32* %8)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @max172xx_capacity_to_ps(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %172

63:                                               ; preds = %3
  %64 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %65 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MAX172XX_REG_REPCAP, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %8)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @max172xx_capacity_to_ps(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %73 = bitcast %union.power_supply_propval* %72 to i32*
  store i32 %71, i32* %73, align 4
  br label %172

74:                                               ; preds = %3
  %75 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %76 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MAX172XX_REG_TTE, align 4
  %79 = call i32 @regmap_read(i32 %77, i32 %78, i32* %8)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @max172xx_time_to_ps(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %84 = bitcast %union.power_supply_propval* %83 to i32*
  store i32 %82, i32* %84, align 4
  br label %172

85:                                               ; preds = %3
  %86 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %87 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MAX172XX_REG_TTF, align 4
  %90 = call i32 @regmap_read(i32 %88, i32 %89, i32* %8)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @max172xx_time_to_ps(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %95 = bitcast %union.power_supply_propval* %94 to i32*
  store i32 %93, i32* %95, align 4
  br label %172

96:                                               ; preds = %3
  %97 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %98 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MAX172XX_REG_TEMP, align 4
  %101 = call i32 @regmap_read(i32 %99, i32 %100, i32* %8)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @max172xx_temperature_to_ps(i32 %102)
  %104 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %105 = bitcast %union.power_supply_propval* %104 to i32*
  store i32 %103, i32* %105, align 4
  br label %172

106:                                              ; preds = %3
  %107 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %108 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MAX172XX_REG_CURRENT, align 4
  %111 = call i32 @regmap_read(i32 %109, i32 %110, i32* %8)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @max172xx_current_to_voltage(i32 %112)
  %114 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %115 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = sdiv i32 %113, %117
  %119 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %120 = bitcast %union.power_supply_propval* %119 to i32*
  store i32 %118, i32* %120, align 4
  br label %172

121:                                              ; preds = %3
  %122 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %123 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MAX172XX_REG_AVGCURRENT, align 4
  %126 = call i32 @regmap_read(i32 %124, i32 %125, i32* %8)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @max172xx_current_to_voltage(i32 %127)
  %129 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %130 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = sdiv i32 %128, %132
  %134 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %135 = bitcast %union.power_supply_propval* %134 to i32*
  store i32 %133, i32* %135, align 4
  br label %172

136:                                              ; preds = %3
  %137 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %138 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MAX1721X_REG_DEV_STR, align 4
  %141 = call i32 @regmap_read(i32 %139, i32 %140, i32* %8)
  store i32 %141, i32* %9, align 4
  %142 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %143 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %146 = bitcast %union.power_supply_propval* %145 to i32*
  store i32 %144, i32* %146, align 4
  br label %172

147:                                              ; preds = %3
  %148 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %149 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @MAX1721X_REG_MFG_STR, align 4
  %152 = call i32 @regmap_read(i32 %150, i32 %151, i32* %8)
  store i32 %152, i32* %9, align 4
  %153 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %154 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %157 = bitcast %union.power_supply_propval* %156 to i32*
  store i32 %155, i32* %157, align 4
  br label %172

158:                                              ; preds = %3
  %159 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %160 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MAX1721X_REG_SER_HEX, align 4
  %163 = call i32 @regmap_read(i32 %161, i32 %162, i32* %8)
  store i32 %163, i32* %9, align 4
  %164 = load %struct.max17211_device_info*, %struct.max17211_device_info** %7, align 8
  %165 = getelementptr inbounds %struct.max17211_device_info, %struct.max17211_device_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %168 = bitcast %union.power_supply_propval* %167 to i32*
  store i32 %166, i32* %168, align 4
  br label %172

169:                                              ; preds = %3
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %169, %158, %147, %136, %121, %106, %96, %85, %74, %63, %52, %42, %32, %28
  %173 = load i32, i32* %9, align 4
  ret i32 %173
}

declare dso_local %struct.max17211_device_info* @to_device_info(%struct.power_supply*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @max172xx_percent_to_ps(i32) #1

declare dso_local i32 @max172xx_voltage_to_ps(i32) #1

declare dso_local i8* @max172xx_capacity_to_ps(i32) #1

declare dso_local i8* @max172xx_time_to_ps(i32) #1

declare dso_local i32 @max172xx_temperature_to_ps(i32) #1

declare dso_local i32 @max172xx_current_to_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
