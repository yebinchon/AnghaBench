; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_power_supply_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_power_supply_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i8* }
%struct.bq24257_device = type { i64, %struct.TYPE_2__, i32, %struct.bq24257_state }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.bq24257_state = type { i32, i8*, i32 }

@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i8* null, align 8
@STATUS_READY = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i8* null, align 8
@STATUS_CHARGE_IN_PROGRESS = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@STATUS_CHARGE_DONE = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i8* null, align 8
@BQ24257_MANUFACTURER = common dso_local global i32 0, align 4
@bq2425x_chip_name = common dso_local global i32* null, align 8
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i8* null, align 8
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i8* null, align 8
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i8* null, align 8
@POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = common dso_local global i8* null, align 8
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i8* null, align 8
@bq24257_ichg_map = common dso_local global i8** null, align 8
@BQ24257_ICHG_MAP_SIZE = common dso_local global i32 0, align 4
@bq24257_vbat_map = common dso_local global i8** null, align 8
@BQ24257_VBAT_MAP_SIZE = common dso_local global i32 0, align 4
@bq24257_iterm_map = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bq24257_power_supply_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_power_supply_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.bq24257_device*, align 8
  %9 = alloca %struct.bq24257_state, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.bq24257_device* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.bq24257_device* %11, %struct.bq24257_device** %8, align 8
  %12 = load %struct.bq24257_device*, %struct.bq24257_device** %8, align 8
  %13 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.bq24257_device*, %struct.bq24257_device** %8, align 8
  %16 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %15, i32 0, i32 3
  %17 = bitcast %struct.bq24257_state* %9 to i8*
  %18 = bitcast %struct.bq24257_state* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = load %struct.bq24257_device*, %struct.bq24257_device** %8, align 8
  %20 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %19, i32 0, i32 2
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %160 [
    i32 128, label %23
    i32 131, label %66
    i32 130, label %70
    i32 129, label %79
    i32 133, label %84
    i32 137, label %108
    i32 136, label %118
    i32 135, label %127
    i32 134, label %137
    i32 138, label %146
    i32 132, label %156
  ]

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %9, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i8**
  store i8* %28, i8** %30, align 8
  br label %65

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %9, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @STATUS_READY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i8**
  store i8* %37, i8** %39, align 8
  br label %64

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %9, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @STATUS_CHARGE_IN_PROGRESS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i8**
  store i8* %46, i8** %48, align 8
  br label %63

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %9, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @STATUS_CHARGE_DONE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i8**
  store i8* %55, i8** %57, align 8
  br label %62

58:                                               ; preds = %49
  %59 = load i8*, i8** @POWER_SUPPLY_STATUS_UNKNOWN, align 8
  %60 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %61 = bitcast %union.power_supply_propval* %60 to i8**
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %27
  br label %163

66:                                               ; preds = %3
  %67 = load i32, i32* @BQ24257_MANUFACTURER, align 4
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i32*
  store i32 %67, i32* %69, align 8
  br label %163

70:                                               ; preds = %3
  %71 = load i32*, i32** @bq2425x_chip_name, align 8
  %72 = load %struct.bq24257_device*, %struct.bq24257_device** %8, align 8
  %73 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %78 = bitcast %union.power_supply_propval* %77 to i32*
  store i32 %76, i32* %78, align 8
  br label %163

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %9, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %83 = bitcast %union.power_supply_propval* %82 to i8**
  store i8* %81, i8** %83, align 8
  br label %163

84:                                               ; preds = %3
  %85 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %103 [
    i32 141, label %87
    i32 142, label %91
    i32 144, label %91
    i32 139, label %95
    i32 143, label %95
    i32 140, label %99
  ]

87:                                               ; preds = %84
  %88 = load i8*, i8** @POWER_SUPPLY_HEALTH_GOOD, align 8
  %89 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %90 = bitcast %union.power_supply_propval* %89 to i8**
  store i8* %88, i8** %90, align 8
  br label %107

91:                                               ; preds = %84, %84
  %92 = load i8*, i8** @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 8
  %93 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %94 = bitcast %union.power_supply_propval* %93 to i8**
  store i8* %92, i8** %94, align 8
  br label %107

95:                                               ; preds = %84, %84
  %96 = load i8*, i8** @POWER_SUPPLY_HEALTH_OVERHEAT, align 8
  %97 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %98 = bitcast %union.power_supply_propval* %97 to i8**
  store i8* %96, i8** %98, align 8
  br label %107

99:                                               ; preds = %84
  %100 = load i8*, i8** @POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE, align 8
  %101 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %102 = bitcast %union.power_supply_propval* %101 to i8**
  store i8* %100, i8** %102, align 8
  br label %107

103:                                              ; preds = %84
  %104 = load i8*, i8** @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 8
  %105 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %106 = bitcast %union.power_supply_propval* %105 to i8**
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %103, %99, %95, %91, %87
  br label %163

108:                                              ; preds = %3
  %109 = load i8**, i8*** @bq24257_ichg_map, align 8
  %110 = load %struct.bq24257_device*, %struct.bq24257_device** %8, align 8
  %111 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i8*, i8** %109, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %117 = bitcast %union.power_supply_propval* %116 to i8**
  store i8* %115, i8** %117, align 8
  br label %163

118:                                              ; preds = %3
  %119 = load i8**, i8*** @bq24257_ichg_map, align 8
  %120 = load i32, i32* @BQ24257_ICHG_MAP_SIZE, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %126 = bitcast %union.power_supply_propval* %125 to i8**
  store i8* %124, i8** %126, align 8
  br label %163

127:                                              ; preds = %3
  %128 = load i8**, i8*** @bq24257_vbat_map, align 8
  %129 = load %struct.bq24257_device*, %struct.bq24257_device** %8, align 8
  %130 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i8*, i8** %128, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %136 = bitcast %union.power_supply_propval* %135 to i8**
  store i8* %134, i8** %136, align 8
  br label %163

137:                                              ; preds = %3
  %138 = load i8**, i8*** @bq24257_vbat_map, align 8
  %139 = load i32, i32* @BQ24257_VBAT_MAP_SIZE, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %138, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %145 = bitcast %union.power_supply_propval* %144 to i8**
  store i8* %143, i8** %145, align 8
  br label %163

146:                                              ; preds = %3
  %147 = load i8**, i8*** @bq24257_iterm_map, align 8
  %148 = load %struct.bq24257_device*, %struct.bq24257_device** %8, align 8
  %149 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i8*, i8** %147, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %155 = bitcast %union.power_supply_propval* %154 to i8**
  store i8* %153, i8** %155, align 8
  br label %163

156:                                              ; preds = %3
  %157 = load %struct.bq24257_device*, %struct.bq24257_device** %8, align 8
  %158 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %159 = call i32 @bq24257_get_input_current_limit(%struct.bq24257_device* %157, %union.power_supply_propval* %158)
  store i32 %159, i32* %4, align 4
  br label %164

160:                                              ; preds = %3
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %164

163:                                              ; preds = %146, %137, %127, %118, %108, %107, %79, %70, %66, %65
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %160, %156
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.bq24257_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bq24257_get_input_current_limit(%struct.bq24257_device*, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
