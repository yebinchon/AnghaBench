; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_charging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_charging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64* }
%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"Cannot find power supply \22%s\22\0A\00", align 1
@POWER_SUPPLY_PROP_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot read ONLINE value from %s\0A\00", align 1
@POWER_SUPPLY_PROP_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot read STATUS value from %s\0A\00", align 1
@POWER_SUPPLY_STATUS_FULL = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @is_charging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_charging(%struct.charger_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca %union.power_supply_propval, align 8
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %10 = call i32 @is_batt_present(%struct.charger_manager* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %132, %13
  %15 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %16 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %135

25:                                               ; preds = %14
  %26 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %27 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %132

31:                                               ; preds = %25
  %32 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %33 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %132

37:                                               ; preds = %31
  %38 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %39 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.power_supply* @power_supply_get_by_name(i64 %46)
  store %struct.power_supply* %47, %struct.power_supply** %7, align 8
  %48 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %49 = icmp ne %struct.power_supply* %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %37
  %51 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %52 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %55 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %132

64:                                               ; preds = %37
  %65 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %66 = load i32, i32* @POWER_SUPPLY_PROP_ONLINE, align 4
  %67 = call i32 @power_supply_get_property(%struct.power_supply* %65, i32 %66, %union.power_supply_propval* %8)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %72 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %75 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @dev_warn(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %85 = call i32 @power_supply_put(%struct.power_supply* %84)
  br label %132

86:                                               ; preds = %64
  %87 = bitcast %union.power_supply_propval* %8 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %92 = call i32 @power_supply_put(%struct.power_supply* %91)
  br label %132

93:                                               ; preds = %86
  %94 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %95 = load i32, i32* @POWER_SUPPLY_PROP_STATUS, align 4
  %96 = call i32 @power_supply_get_property(%struct.power_supply* %94, i32 %95, %union.power_supply_propval* %8)
  store i32 %96, i32* %5, align 4
  %97 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %98 = call i32 @power_supply_put(%struct.power_supply* %97)
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %93
  %102 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %103 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %106 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @dev_warn(i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %113)
  br label %132

115:                                              ; preds = %93
  %116 = bitcast %union.power_supply_propval* %8 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @POWER_SUPPLY_STATUS_FULL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %130, label %120

120:                                              ; preds = %115
  %121 = bitcast %union.power_supply_propval* %8 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = bitcast %union.power_supply_propval* %8 to i64*
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %120, %115
  br label %132

131:                                              ; preds = %125
  store i32 1, i32* %6, align 4
  br label %135

132:                                              ; preds = %130, %101, %90, %70, %50, %36, %30
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %14

135:                                              ; preds = %131, %14
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %12
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @is_batt_present(%struct.charger_manager*) #1

declare dso_local %struct.power_supply* @power_supply_get_by_name(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
