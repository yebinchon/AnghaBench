; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_get_battery_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_get_battery_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.i2c_client = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sbs_info = type { i64, i64, i32, i32 }

@sbs_data = common dso_local global %struct.TYPE_2__* null, align 8
@POWER_SUPPLY_PROP_CAPACITY_LEVEL = common dso_local global i32 0, align 4
@BATTERY_INITIALIZED = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@BATTERY_FULL_CHARGED = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@BATTERY_FULL_DISCHARGED = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_NORMAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_STATUS = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@BATTERY_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@POWER_SUPPLY_PROP_CAPACITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, %union.power_supply_propval*)* @sbs_get_battery_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbs_get_battery_property(%struct.i2c_client* %0, i32 %1, i32 %2, %union.power_supply_propval* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.power_supply_propval*, align 8
  %10 = alloca %struct.sbs_info*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.power_supply_propval* %3, %union.power_supply_propval** %9, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.sbs_info* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.sbs_info* %13, %struct.sbs_info** %10, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sbs_read_word_data(%struct.i2c_client* %14, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %187

26:                                               ; preds = %4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %38, %44
  br i1 %45, label %46, label %162

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %47, %53
  br i1 %54, label %55, label %162

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @POWER_SUPPLY_PROP_CAPACITY_LEVEL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @BATTERY_INITIALIZED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN, align 4
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  store i32 %68, i32* %70, align 4
  br label %95

71:                                               ; preds = %62
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @BATTERY_FULL_CHARGED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  %78 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %79 = bitcast %union.power_supply_propval* %78 to i32*
  store i32 %77, i32* %79, align 4
  br label %94

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @BATTERY_FULL_DISCHARGED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  %87 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %88 = bitcast %union.power_supply_propval* %87 to i32*
  store i32 %86, i32* %88, align 4
  br label %93

89:                                               ; preds = %80
  %90 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  %91 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %92 = bitcast %union.power_supply_propval* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %76
  br label %95

95:                                               ; preds = %94, %67
  store i32 0, i32* %5, align 4
  br label %187

96:                                               ; preds = %55
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @POWER_SUPPLY_PROP_STATUS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %187

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @BATTERY_FULL_CHARGED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %109 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %110 = bitcast %union.power_supply_propval* %109 to i32*
  store i32 %108, i32* %110, align 4
  br label %125

111:                                              ; preds = %102
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @BATTERY_DISCHARGING, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %118 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %119 = bitcast %union.power_supply_propval* %118 to i32*
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %111
  %121 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %122 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %123 = bitcast %union.power_supply_propval* %122 to i32*
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %107
  %126 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %127 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %128 = bitcast %union.power_supply_propval* %127 to i32*
  %129 = call i32 @sbs_status_correct(%struct.i2c_client* %126, i32* %128)
  %130 = load %struct.sbs_info*, %struct.sbs_info** %10, align 8
  %131 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %136 = bitcast %union.power_supply_propval* %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.sbs_info*, %struct.sbs_info** %10, align 8
  %140 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %161

141:                                              ; preds = %125
  %142 = load %struct.sbs_info*, %struct.sbs_info** %10, align 8
  %143 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %146 = bitcast %union.power_supply_propval* %145 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp ne i64 %144, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %141
  %151 = load %struct.sbs_info*, %struct.sbs_info** %10, align 8
  %152 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %151, i32 0, i32 3
  %153 = call i32 @cancel_delayed_work_sync(i32* %152)
  %154 = load %struct.sbs_info*, %struct.sbs_info** %10, align 8
  %155 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @power_supply_changed(i32 %156)
  %158 = load %struct.sbs_info*, %struct.sbs_info** %10, align 8
  %159 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %150, %141
  br label %161

161:                                              ; preds = %160, %134
  br label %186

162:                                              ; preds = %46, %36
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @POWER_SUPPLY_PROP_STATUS, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i64, i64* @POWER_SUPPLY_STATUS_UNKNOWN, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %170 = bitcast %union.power_supply_propval* %169 to i32*
  store i32 %168, i32* %170, align 4
  br label %185

171:                                              ; preds = %162
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @POWER_SUPPLY_PROP_CAPACITY, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  %177 = call i64 @min(i32 %176, i32 100)
  %178 = trunc i64 %177 to i32
  %179 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %180 = bitcast %union.power_supply_propval* %179 to i32*
  store i32 %178, i32* %180, align 4
  br label %184

181:                                              ; preds = %171
  %182 = load %union.power_supply_propval*, %union.power_supply_propval** %9, align 8
  %183 = bitcast %union.power_supply_propval* %182 to i32*
  store i32 0, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %175
  br label %185

185:                                              ; preds = %184, %166
  br label %186

186:                                              ; preds = %185, %161
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %186, %100, %95, %24
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local %struct.sbs_info* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @sbs_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @sbs_status_correct(%struct.i2c_client*, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
