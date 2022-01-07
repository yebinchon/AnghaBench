; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_power_supply_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_power_supply_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i8* }
%struct.bq25890_device = type { %struct.TYPE_2__, i32, i32, %struct.bq25890_state }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bq25890_state = type { i32, i32, i32, i32, i32 }

@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@STATUS_PRE_CHARGING = common dso_local global i32 0, align 4
@STATUS_FAST_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@STATUS_TERMINATION_DONE = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@BQ25890_MANUFACTURER = common dso_local global i8* null, align 8
@BQ25890_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"BQ25890\00", align 1
@BQ25895_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"BQ25895\00", align 1
@BQ25896_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"BQ25896\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@CHRG_FAULT_TIMER_EXPIRED = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = common dso_local global i32 0, align 4
@CHRG_FAULT_THERMAL_SHUTDOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@F_ICHGR = common dso_local global i32 0, align 4
@TBL_ICHG = common dso_local global i32 0, align 4
@F_BATV = common dso_local global i32 0, align 4
@TBL_VREG = common dso_local global i32 0, align 4
@TBL_ITERM = common dso_local global i32 0, align 4
@F_SYSV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bq25890_power_supply_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq25890_power_supply_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bq25890_device*, align 8
  %10 = alloca %struct.bq25890_state, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.bq25890_device* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.bq25890_device* %12, %struct.bq25890_device** %9, align 8
  %13 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %14 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %17 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %16, i32 0, i32 3
  %18 = bitcast %struct.bq25890_state* %10 to i8*
  %19 = bitcast %struct.bq25890_state* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 20, i1 false)
  %20 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %21 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %20, i32 0, i32 2
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %242 [
    i32 129, label %24
    i32 132, label %72
    i32 131, label %76
    i32 130, label %109
    i32 133, label %114
    i32 137, label %164
    i32 136, label %177
    i32 135, label %187
    i32 134, label %208
    i32 138, label %218
    i32 128, label %228
  ]

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 %29, i32* %31, align 8
  br label %71

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @STATUS_NOT_CHARGING, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 %38, i32* %40, align 8
  br label %70

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STATUS_PRE_CHARGING, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @STATUS_FAST_CHARGING, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  store i32 %52, i32* %54, align 8
  br label %69

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @STATUS_TERMINATION_DONE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  store i32 %61, i32* %63, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %66 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %67 = bitcast %union.power_supply_propval* %66 to i32*
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %37
  br label %71

71:                                               ; preds = %70, %28
  br label %245

72:                                               ; preds = %3
  %73 = load i8*, i8** @BQ25890_MANUFACTURER, align 8
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %75 = bitcast %union.power_supply_propval* %74 to i8**
  store i8* %73, i8** %75, align 8
  br label %245

76:                                               ; preds = %3
  %77 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %78 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BQ25890_ID, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %84 = bitcast %union.power_supply_propval* %83 to i8**
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %84, align 8
  br label %108

85:                                               ; preds = %76
  %86 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %87 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BQ25895_ID, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %93 = bitcast %union.power_supply_propval* %92 to i8**
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %93, align 8
  br label %107

94:                                               ; preds = %85
  %95 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %96 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BQ25896_ID, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %102 = bitcast %union.power_supply_propval* %101 to i8**
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %102, align 8
  br label %106

103:                                              ; preds = %94
  %104 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %105 = bitcast %union.power_supply_propval* %104 to i8**
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107, %82
  br label %245

109:                                              ; preds = %3
  %110 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %113 = bitcast %union.power_supply_propval* %112 to i32*
  store i32 %111, i32* %113, align 8
  br label %245

114:                                              ; preds = %3
  %115 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %128 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %129 = bitcast %union.power_supply_propval* %128 to i32*
  store i32 %127, i32* %129, align 8
  br label %163

130:                                              ; preds = %122, %118, %114
  %131 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %136 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %137 = bitcast %union.power_supply_propval* %136 to i32*
  store i32 %135, i32* %137, align 8
  br label %162

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CHRG_FAULT_TIMER_EXPIRED, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE, align 4
  %145 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %146 = bitcast %union.power_supply_propval* %145 to i32*
  store i32 %144, i32* %146, align 8
  br label %161

147:                                              ; preds = %138
  %148 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CHRG_FAULT_THERMAL_SHUTDOWN, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %154 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %155 = bitcast %union.power_supply_propval* %154 to i32*
  store i32 %153, i32* %155, align 8
  br label %160

156:                                              ; preds = %147
  %157 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %158 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %159 = bitcast %union.power_supply_propval* %158 to i32*
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %143
  br label %162

162:                                              ; preds = %161, %134
  br label %163

163:                                              ; preds = %162, %126
  br label %245

164:                                              ; preds = %3
  %165 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %166 = load i32, i32* @F_ICHGR, align 4
  %167 = call i32 @bq25890_field_read(%struct.bq25890_device* %165, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %246

172:                                              ; preds = %164
  %173 = load i32, i32* %8, align 4
  %174 = mul nsw i32 %173, 50000
  %175 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %176 = bitcast %union.power_supply_propval* %175 to i32*
  store i32 %174, i32* %176, align 8
  br label %245

177:                                              ; preds = %3
  %178 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %179 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @TBL_ICHG, align 4
  %183 = call i8* @bq25890_find_val(i32 %181, i32 %182)
  %184 = ptrtoint i8* %183 to i32
  %185 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %186 = bitcast %union.power_supply_propval* %185 to i32*
  store i32 %184, i32* %186, align 8
  br label %245

187:                                              ; preds = %3
  %188 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %10, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %193 = bitcast %union.power_supply_propval* %192 to i32*
  store i32 0, i32* %193, align 8
  br label %245

194:                                              ; preds = %187
  %195 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %196 = load i32, i32* @F_BATV, align 4
  %197 = call i32 @bq25890_field_read(%struct.bq25890_device* %195, i32 %196)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i32, i32* %8, align 4
  store i32 %201, i32* %4, align 4
  br label %246

202:                                              ; preds = %194
  %203 = load i32, i32* %8, align 4
  %204 = mul nsw i32 %203, 20000
  %205 = add nsw i32 2304000, %204
  %206 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %207 = bitcast %union.power_supply_propval* %206 to i32*
  store i32 %205, i32* %207, align 8
  br label %245

208:                                              ; preds = %3
  %209 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %210 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @TBL_VREG, align 4
  %214 = call i8* @bq25890_find_val(i32 %212, i32 %213)
  %215 = ptrtoint i8* %214 to i32
  %216 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %217 = bitcast %union.power_supply_propval* %216 to i32*
  store i32 %215, i32* %217, align 8
  br label %245

218:                                              ; preds = %3
  %219 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %220 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @TBL_ITERM, align 4
  %224 = call i8* @bq25890_find_val(i32 %222, i32 %223)
  %225 = ptrtoint i8* %224 to i32
  %226 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %227 = bitcast %union.power_supply_propval* %226 to i32*
  store i32 %225, i32* %227, align 8
  br label %245

228:                                              ; preds = %3
  %229 = load %struct.bq25890_device*, %struct.bq25890_device** %9, align 8
  %230 = load i32, i32* @F_SYSV, align 4
  %231 = call i32 @bq25890_field_read(%struct.bq25890_device* %229, i32 %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %4, align 4
  br label %246

236:                                              ; preds = %228
  %237 = load i32, i32* %8, align 4
  %238 = mul nsw i32 %237, 20000
  %239 = add nsw i32 2304000, %238
  %240 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %241 = bitcast %union.power_supply_propval* %240 to i32*
  store i32 %239, i32* %241, align 8
  br label %245

242:                                              ; preds = %3
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %4, align 4
  br label %246

245:                                              ; preds = %236, %218, %208, %202, %191, %177, %172, %163, %109, %108, %72, %71
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %245, %242, %234, %200, %170
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local %struct.bq25890_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bq25890_field_read(%struct.bq25890_device*, i32) #1

declare dso_local i8* @bq25890_find_val(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
