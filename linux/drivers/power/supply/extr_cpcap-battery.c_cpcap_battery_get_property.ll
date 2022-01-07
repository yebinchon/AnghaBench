; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.cpcap_battery_ddata = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.cpcap_battery_state_data = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }

@CPCAP_NO_BATTERY = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_HIGH = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_NORMAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_LOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @cpcap_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.cpcap_battery_ddata*, align 8
  %9 = alloca %struct.cpcap_battery_state_data*, align 8
  %10 = alloca %struct.cpcap_battery_state_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %15 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %16 = call %struct.cpcap_battery_ddata* @power_supply_get_drvdata(%struct.power_supply* %15)
  store %struct.cpcap_battery_ddata* %16, %struct.cpcap_battery_ddata** %8, align 8
  %17 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %18 = call i32 @cpcap_battery_update_status(%struct.cpcap_battery_ddata* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %4, align 4
  br label %293

23:                                               ; preds = %3
  %24 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %25 = call %struct.cpcap_battery_state_data* @cpcap_battery_latest(%struct.cpcap_battery_ddata* %24)
  store %struct.cpcap_battery_state_data* %25, %struct.cpcap_battery_state_data** %9, align 8
  %26 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %27 = call %struct.cpcap_battery_state_data* @cpcap_battery_previous(%struct.cpcap_battery_ddata* %26)
  store %struct.cpcap_battery_state_data* %27, %struct.cpcap_battery_state_data** %10, align 8
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %289 [
    i32 135, label %29
    i32 133, label %42
    i32 132, label %63
    i32 128, label %71
    i32 130, label %76
    i32 129, label %84
    i32 139, label %92
    i32 138, label %131
    i32 141, label %137
    i32 136, label %143
    i32 137, label %157
    i32 142, label %218
    i32 140, label %271
    i32 134, label %279
    i32 131, label %283
  ]

29:                                               ; preds = %23
  %30 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %31 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CPCAP_NO_BATTERY, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 1, i32* %37, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %292

42:                                               ; preds = %23
  %43 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %44 = call i32 @cpcap_battery_full(%struct.cpcap_battery_ddata* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %292

50:                                               ; preds = %42
  %51 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %52 = call i8* @cpcap_battery_cc_get_avg_current(%struct.cpcap_battery_ddata* %51)
  %53 = icmp ult i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i32*
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %60 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %61 = bitcast %union.power_supply_propval* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %292

63:                                               ; preds = %23
  %64 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %65 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  store i32 %68, i32* %70, align 4
  br label %292

71:                                               ; preds = %23
  %72 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %73 = call i32 @cpcap_battery_get_voltage(%struct.cpcap_battery_ddata* %72)
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %75 = bitcast %union.power_supply_propval* %74 to i32*
  store i32 %73, i32* %75, align 4
  br label %292

76:                                               ; preds = %23
  %77 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %78 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %83 = bitcast %union.power_supply_propval* %82 to i32*
  store i32 %81, i32* %83, align 4
  br label %292

84:                                               ; preds = %23
  %85 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %86 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %91 = bitcast %union.power_supply_propval* %90 to i32*
  store i32 %89, i32* %91, align 4
  br label %292

92:                                               ; preds = %23
  %93 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %94 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %10, align 8
  %98 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %96, %100
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %92
  %105 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %106 = call i8* @cpcap_battery_cc_get_avg_current(%struct.cpcap_battery_ddata* %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %109 = bitcast %union.power_supply_propval* %108 to i32*
  store i32 %107, i32* %109, align 4
  br label %292

110:                                              ; preds = %92
  %111 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %112 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %10, align 8
  %116 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %114, %118
  store i64 %119, i64* %12, align 8
  %120 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %124 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @cpcap_battery_cc_to_ua(%struct.cpcap_battery_ddata* %120, i64 %121, i64 %122, i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %130 = bitcast %union.power_supply_propval* %129 to i32*
  store i32 %128, i32* %130, align 4
  br label %292

131:                                              ; preds = %23
  %132 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %133 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %136 = bitcast %union.power_supply_propval* %135 to i32*
  store i32 %134, i32* %136, align 4
  br label %292

137:                                              ; preds = %23
  %138 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %139 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %142 = bitcast %union.power_supply_propval* %141 to i32*
  store i32 %140, i32* %142, align 4
  br label %292

143:                                              ; preds = %23
  %144 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %145 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = sdiv i32 %146, 10000
  %148 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %149 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i8* @div64_s64(i32 %152, i32 100)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %156 = bitcast %union.power_supply_propval* %155 to i32*
  store i32 %154, i32* %156, align 4
  br label %292

157:                                              ; preds = %23
  %158 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %159 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %10, align 8
  %163 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %161, %165
  store i64 %166, i64* %11, align 8
  %167 = load i64, i64* %11, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %184, label %169

169:                                              ; preds = %157
  %170 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %171 = call i8* @cpcap_battery_cc_get_avg_current(%struct.cpcap_battery_ddata* %170)
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %14, align 4
  %173 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %174 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 10000
  %177 = load i32, i32* %14, align 4
  %178 = mul nsw i32 %177, %176
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i8* @div64_s64(i32 %179, i32 100)
  %181 = ptrtoint i8* %180 to i32
  %182 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %183 = bitcast %union.power_supply_propval* %182 to i32*
  store i32 %181, i32* %183, align 4
  br label %292

184:                                              ; preds = %157
  %185 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %186 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %10, align 8
  %190 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %188, %192
  store i64 %193, i64* %12, align 8
  %194 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* %12, align 8
  %197 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %198 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @cpcap_battery_cc_to_ua(%struct.cpcap_battery_ddata* %194, i64 %195, i64 %196, i32 %200)
  %202 = ptrtoint i8* %201 to i32
  store i32 %202, i32* %14, align 4
  %203 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %204 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %10, align 8
  %207 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %205, %208
  %210 = sdiv i32 %209, 20000
  %211 = load i32, i32* %14, align 4
  %212 = mul nsw i32 %211, %210
  store i32 %212, i32* %14, align 4
  %213 = load i32, i32* %14, align 4
  %214 = call i8* @div64_s64(i32 %213, i32 100)
  %215 = ptrtoint i8* %214 to i32
  %216 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %217 = bitcast %union.power_supply_propval* %216 to i32*
  store i32 %215, i32* %217, align 4
  br label %292

218:                                              ; preds = %23
  %219 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %220 = call i32 @cpcap_battery_full(%struct.cpcap_battery_ddata* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  %224 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %225 = bitcast %union.power_supply_propval* %224 to i32*
  store i32 %223, i32* %225, align 4
  br label %270

226:                                              ; preds = %218
  %227 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %228 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = icmp sge i32 %229, 3750000
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_HIGH, align 4
  %233 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %234 = bitcast %union.power_supply_propval* %233 to i32*
  store i32 %232, i32* %234, align 4
  br label %269

235:                                              ; preds = %226
  %236 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %237 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = icmp sge i32 %238, 3300000
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  %242 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %243 = bitcast %union.power_supply_propval* %242 to i32*
  store i32 %241, i32* %243, align 4
  br label %268

244:                                              ; preds = %235
  %245 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %246 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %247, 3100000
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  %251 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %252 = bitcast %union.power_supply_propval* %251 to i32*
  store i32 %250, i32* %252, align 4
  br label %267

253:                                              ; preds = %244
  %254 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %255 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = icmp sle i32 %256, 3100000
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  %260 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %261 = bitcast %union.power_supply_propval* %260 to i32*
  store i32 %259, i32* %261, align 4
  br label %266

262:                                              ; preds = %253
  %263 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN, align 4
  %264 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %265 = bitcast %union.power_supply_propval* %264 to i32*
  store i32 %263, i32* %265, align 4
  br label %266

266:                                              ; preds = %262, %258
  br label %267

267:                                              ; preds = %266, %249
  br label %268

268:                                              ; preds = %267, %240
  br label %269

269:                                              ; preds = %268, %231
  br label %270

270:                                              ; preds = %269, %222
  br label %292

271:                                              ; preds = %23
  %272 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %8, align 8
  %273 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %278 = bitcast %union.power_supply_propval* %277 to i32*
  store i32 %276, i32* %278, align 4
  br label %292

279:                                              ; preds = %23
  %280 = load i32, i32* @POWER_SUPPLY_SCOPE_SYSTEM, align 4
  %281 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %282 = bitcast %union.power_supply_propval* %281 to i32*
  store i32 %280, i32* %282, align 4
  br label %292

283:                                              ; preds = %23
  %284 = load %struct.cpcap_battery_state_data*, %struct.cpcap_battery_state_data** %9, align 8
  %285 = getelementptr inbounds %struct.cpcap_battery_state_data, %struct.cpcap_battery_state_data* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %288 = bitcast %union.power_supply_propval* %287 to i32*
  store i32 %286, i32* %288, align 4
  br label %292

289:                                              ; preds = %23
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %4, align 4
  br label %293

292:                                              ; preds = %283, %279, %271, %270, %184, %169, %143, %137, %131, %110, %104, %84, %76, %71, %63, %62, %46, %41
  store i32 0, i32* %4, align 4
  br label %293

293:                                              ; preds = %292, %289, %21
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local %struct.cpcap_battery_ddata* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @cpcap_battery_update_status(%struct.cpcap_battery_ddata*) #1

declare dso_local %struct.cpcap_battery_state_data* @cpcap_battery_latest(%struct.cpcap_battery_ddata*) #1

declare dso_local %struct.cpcap_battery_state_data* @cpcap_battery_previous(%struct.cpcap_battery_ddata*) #1

declare dso_local i32 @cpcap_battery_full(%struct.cpcap_battery_ddata*) #1

declare dso_local i8* @cpcap_battery_cc_get_avg_current(%struct.cpcap_battery_ddata*) #1

declare dso_local i32 @cpcap_battery_get_voltage(%struct.cpcap_battery_ddata*) #1

declare dso_local i8* @cpcap_battery_cc_to_ua(%struct.cpcap_battery_ddata*, i64, i64, i32) #1

declare dso_local i8* @div64_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
