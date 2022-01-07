; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_ps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_ps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z2_charger = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.z2_battery_info* }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.z2_battery_info = type { i64, i64, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_STATUS = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TECHNOLOGY = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_VOLTAGE_NOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_VOLTAGE_MAX = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_VOLTAGE_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"Please consider setting proper battery name in platform definition file, falling back to name \22 Z2_DEFAULT_NAME \22\0A\00", align 1
@Z2_DEFAULT_NAME = common dso_local global i64 0, align 8
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@z2_batt_get_property = common dso_local global i32 0, align 4
@z2_batt_ext_power_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z2_charger*, i32)* @z2_batt_ps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z2_batt_ps_init(%struct.z2_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z2_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.z2_battery_info*, align 8
  store %struct.z2_charger* %0, %struct.z2_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %10 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %9, i32 0, i32 2
  %11 = load %struct.z2_battery_info*, %struct.z2_battery_info** %10, align 8
  store %struct.z2_battery_info* %11, %struct.z2_battery_info** %8, align 8
  %12 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %13 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %21 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %29 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %37 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %45 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32* @kcalloc(i32 %52, i32 4, i32 %53)
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %172

60:                                               ; preds = %51
  %61 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %68 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load i32, i32* @POWER_SUPPLY_PROP_STATUS, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %60
  %79 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %80 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @POWER_SUPPLY_PROP_TECHNOLOGY, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %92 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @POWER_SUPPLY_PROP_VOLTAGE_NOW, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %104 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @POWER_SUPPLY_PROP_VOLTAGE_MAX, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %102
  %115 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %116 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32, i32* @POWER_SUPPLY_PROP_VOLTAGE_MIN, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %114
  %127 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %128 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %133 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @dev_info(i32* %135, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0))
  %137 = load i64, i64* @Z2_DEFAULT_NAME, align 8
  %138 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %139 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 6
  store i64 %137, i64* %140, align 8
  br label %148

141:                                              ; preds = %126
  %142 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  %143 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %146 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 6
  store i64 %144, i64* %147, align 8
  br label %148

148:                                              ; preds = %141, %131
  %149 = load i32*, i32** %7, align 8
  %150 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %151 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32* %149, i32** %152, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %155 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 8
  %157 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %158 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %159 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 5
  store i32 %157, i32* %160, align 8
  %161 = load i32, i32* @z2_batt_get_property, align 4
  %162 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %163 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* @z2_batt_ext_power_changed, align 4
  %166 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %167 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  store i32 %165, i32* %168, align 8
  %169 = load %struct.z2_charger*, %struct.z2_charger** %4, align 8
  %170 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  store i32 1, i32* %171, align 4
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %148, %57
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
