; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_algorithm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i32, i32, i32, i32, %struct.TYPE_14__, i32, i8*, %struct.TYPE_13__*, %struct.TYPE_11__, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@power_supply_class = common dso_local global i32 0, align 4
@abx500_chargalg_get_ext_psy_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Checking charger is enabled error: Returned Value %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [220 x i8] c"[CHARGALG] Vb %d Ib_avg %d Ib_inst %d Tb %d Cap %d Maint %d State %s Active_chg %d Chg_status %d AC %d USB %d AC_online %d USB_online %d AC_CV %d USB_CV %d AC_I %d USB_I %d AC_Vset %d AC_Iset %d USB_Vset %d USB_Iset %d\0A\00", align 1
@states = common dso_local global i32* null, align 8
@AC_CHG = common dso_local global i32 0, align 4
@USB_CHG = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i8* null, align 8
@CHARGALG_CURR_STEP_LOW = common dso_local global i32 0, align 4
@CHARGALG_CURR_STEP_HIGH = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abx500_chargalg*)* @abx500_chargalg_algorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abx500_chargalg_algorithm(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca %struct.abx500_chargalg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %2, align 8
  %6 = load i32, i32* @power_supply_class, align 4
  %7 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %8 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @abx500_chargalg_get_ext_psy_data, align 4
  %11 = call i32 @class_for_each_device(i32 %6, i32* null, i32 %9, i32 %10)
  %12 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %13 = call i32 @abx500_chargalg_end_of_charge(%struct.abx500_chargalg* %12)
  %14 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %15 = call i32 @abx500_chargalg_check_temp(%struct.abx500_chargalg* %14)
  %16 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %17 = call i32 @abx500_chargalg_check_charger_voltage(%struct.abx500_chargalg* %16)
  %18 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %19 = call i32 @abx500_chargalg_check_charger_connection(%struct.abx500_chargalg* %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %21 = call i32 @abx500_chargalg_check_current_step_status(%struct.abx500_chargalg* %20)
  %22 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %23 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_ab8500(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %29 = call i32 @abx500_chargalg_check_charger_enable(%struct.abx500_chargalg* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %34 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %27
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %44 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 17
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %50 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %49, i32 0, i32 7
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %48, %39
  %56 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %57 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 151
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %62 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %65 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %64, i32 150)
  br label %66

66:                                               ; preds = %60, %55
  br label %255

67:                                               ; preds = %48, %42
  %68 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %69 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 136
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %74 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 137
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %67
  br label %254

78:                                               ; preds = %72
  %79 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %80 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %86 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 139
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %91 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %90, i32 138)
  br label %92

92:                                               ; preds = %89, %84
  br label %253

93:                                               ; preds = %78
  %94 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %95 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 13
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %101 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 155
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %106 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %105, i32 154)
  br label %107

107:                                              ; preds = %104, %99
  br label %252

108:                                              ; preds = %93
  %109 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %110 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %116 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %114, %108
  %121 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %122 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 153
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %127 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 16
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %133 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %132, i32 152)
  br label %134

134:                                              ; preds = %131, %125, %120
  br label %251

135:                                              ; preds = %114
  %136 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %137 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 10
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %165, label %141

141:                                              ; preds = %135
  %142 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %143 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %141
  %148 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %149 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %147
  %154 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %155 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %154, i32 0, i32 11
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %161 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %160, i32 0, i32 11
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %159, %153, %147, %141, %135
  %166 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %167 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 141
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %172 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %171, i32 140)
  br label %173

173:                                              ; preds = %170, %165
  br label %250

174:                                              ; preds = %159
  %175 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %176 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 12
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %182 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 11
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %180, %174
  %187 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %188 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 149
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %193 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %192, i32 148)
  br label %194

194:                                              ; preds = %191, %186
  br label %249

195:                                              ; preds = %180
  %196 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %197 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %203 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 133
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %208 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %207, i32 132)
  br label %209

209:                                              ; preds = %206, %201
  br label %248

210:                                              ; preds = %195
  %211 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %212 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %210
  %217 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %218 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %216, %210
  %223 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %224 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 129
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %229 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %228, i32 128)
  br label %230

230:                                              ; preds = %227, %222
  br label %247

231:                                              ; preds = %216
  %232 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %233 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %231
  %238 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %239 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 135
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %244 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %243, i32 134)
  br label %245

245:                                              ; preds = %242, %237
  br label %246

246:                                              ; preds = %245, %231
  br label %247

247:                                              ; preds = %246, %230
  br label %248

248:                                              ; preds = %247, %209
  br label %249

249:                                              ; preds = %248, %194
  br label %250

250:                                              ; preds = %249, %173
  br label %251

251:                                              ; preds = %250, %134
  br label %252

252:                                              ; preds = %251, %107
  br label %253

253:                                              ; preds = %252, %92
  br label %254

254:                                              ; preds = %253, %77
  br label %255

255:                                              ; preds = %254, %66
  %256 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %257 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %260 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %259, i32 0, i32 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %264 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %268 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %267, i32 0, i32 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %272 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %271, i32 0, i32 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %276 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %275, i32 0, i32 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %280 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** @states, align 8
  %283 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %284 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %282, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %290 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %289, i32 0, i32 11
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 10
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %294 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %293, i32 0, i32 6
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %297 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %296, i32 0, i32 11
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @AC_CHG, align 4
  %301 = and i32 %299, %300
  %302 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %303 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %302, i32 0, i32 11
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @USB_CHG, align 4
  %307 = and i32 %305, %306
  %308 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %309 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %308, i32 0, i32 11
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @AC_CHG, align 4
  %313 = and i32 %311, %312
  %314 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %315 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %314, i32 0, i32 11
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @USB_CHG, align 4
  %319 = and i32 %317, %318
  %320 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %321 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 15
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %325 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %324, i32 0, i32 4
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 14
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %329 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %328, i32 0, i32 11
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 9
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %333 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %332, i32 0, i32 11
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 8
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %337 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %336, i32 0, i32 11
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %341 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %340, i32 0, i32 11
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %345 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %344, i32 0, i32 11
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %349 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %348, i32 0, i32 11
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @dev_dbg(i32 %258, i8* getelementptr inbounds ([220 x i8], [220 x i8]* @.str.1, i64 0, i64 0), i32 %262, i32 %266, i32 %270, i32 %274, i32 %278, i32 %281, i32 %288, i32 %292, i8* %295, i32 %301, i32 %307, i32 %313, i32 %319, i32 %323, i32 %327, i32 %331, i32 %335, i32 %339, i32 %343, i32 %347, i32 %351)
  %353 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %354 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  switch i32 %355, label %837 [
    i32 150, label %356
    i32 151, label %364
    i32 136, label %365
    i32 137, label %399
    i32 154, label %400
    i32 155, label %405
    i32 148, label %415
    i32 149, label %420
    i32 140, label %436
    i32 141, label %441
    i32 152, label %475
    i32 153, label %480
    i32 138, label %496
    i32 139, label %501
    i32 142, label %502
    i32 143, label %569
    i32 130, label %597
    i32 131, label %602
    i32 146, label %625
    i32 147, label %677
    i32 144, label %689
    i32 145, label %739
    i32 134, label %751
    i32 135, label %791
    i32 128, label %801
    i32 129, label %806
    i32 132, label %822
    i32 133, label %827
  ]

356:                                              ; preds = %255
  %357 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %358 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %357)
  %359 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %360 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %361 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %360, i32 0, i32 6
  store i8* %359, i8** %361, align 8
  %362 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %363 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %362, i32 151)
  br label %364

364:                                              ; preds = %255, %356
  br label %837

365:                                              ; preds = %255
  %366 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %367 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %366, i32 0, i32 12
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %373 = call i32 @abx500_chargalg_ac_en(%struct.abx500_chargalg* %372, i32 0, i32 0, i32 0)
  br label %374

374:                                              ; preds = %371, %365
  %375 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %376 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %375, i32 0, i32 12
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %382 = call i32 @abx500_chargalg_usb_en(%struct.abx500_chargalg* %381, i32 0, i32 0, i32 0)
  br label %383

383:                                              ; preds = %380, %374
  %384 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %385 = call i32 @abx500_chargalg_stop_safety_timer(%struct.abx500_chargalg* %384)
  %386 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %387 = call i32 @abx500_chargalg_stop_maintenance_timer(%struct.abx500_chargalg* %386)
  %388 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %389 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %390 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %389, i32 0, i32 6
  store i8* %388, i8** %390, align 8
  %391 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %392 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %391, i32 0, i32 1
  store i32 0, i32* %392, align 4
  %393 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %394 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %393, i32 137)
  %395 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %396 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @power_supply_changed(i32 %397)
  br label %399

399:                                              ; preds = %255, %383
  br label %837

400:                                              ; preds = %255
  %401 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %402 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %401)
  %403 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %404 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %403, i32 155)
  br label %405

405:                                              ; preds = %255, %400
  %406 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %407 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %406, i32 0, i32 4
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 13
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %405
  %412 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %413 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %412, i32 142)
  br label %414

414:                                              ; preds = %411, %405
  br label %837

415:                                              ; preds = %255
  %416 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %417 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %416)
  %418 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %419 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %418, i32 149)
  br label %420

420:                                              ; preds = %255, %415
  %421 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %422 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %421, i32 0, i32 4
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 12
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %435, label %426

426:                                              ; preds = %420
  %427 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %428 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %427, i32 0, i32 4
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 11
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %426
  %433 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %434 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %433, i32 142)
  br label %435

435:                                              ; preds = %432, %426, %420
  br label %837

436:                                              ; preds = %255
  %437 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %438 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %437)
  %439 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %440 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %439, i32 141)
  br label %441

441:                                              ; preds = %255, %436
  %442 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %443 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %442, i32 0, i32 4
  %444 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %443, i32 0, i32 10
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %474, label %447

447:                                              ; preds = %441
  %448 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %449 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %448, i32 0, i32 4
  %450 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %449, i32 0, i32 9
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %474, label %453

453:                                              ; preds = %447
  %454 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %455 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %454, i32 0, i32 4
  %456 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %455, i32 0, i32 8
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %474, label %459

459:                                              ; preds = %453
  %460 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %461 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %460, i32 0, i32 11
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %461, i32 0, i32 3
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %474

465:                                              ; preds = %459
  %466 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %467 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %466, i32 0, i32 11
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 2
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %474

471:                                              ; preds = %465
  %472 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %473 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %472, i32 142)
  br label %474

474:                                              ; preds = %471, %465, %459, %453, %447, %441
  br label %837

475:                                              ; preds = %255
  %476 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %477 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %476)
  %478 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %479 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %478, i32 153)
  br label %480

480:                                              ; preds = %255, %475
  %481 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %482 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %481, i32 0, i32 4
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 7
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %495, label %486

486:                                              ; preds = %480
  %487 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %488 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %487, i32 0, i32 4
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %488, i32 0, i32 6
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %495, label %492

492:                                              ; preds = %486
  %493 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %494 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %493, i32 142)
  br label %495

495:                                              ; preds = %492, %486, %480
  br label %837

496:                                              ; preds = %255
  %497 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %498 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %497)
  %499 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %500 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %499, i32 139)
  br label %501

501:                                              ; preds = %255, %496
  br label %837

502:                                              ; preds = %255
  %503 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %504 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %503, i32 0, i32 10
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @CHARGALG_CURR_STEP_LOW, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %512

509:                                              ; preds = %502
  %510 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %511 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %510)
  br label %549

512:                                              ; preds = %502
  %513 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %514 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %513, i32 0, i32 7
  %515 = load %struct.TYPE_13__*, %struct.TYPE_13__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %515, i32 0, i32 1
  %517 = load %struct.TYPE_12__*, %struct.TYPE_12__** %516, align 8
  %518 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %519 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %518, i32 0, i32 7
  %520 = load %struct.TYPE_13__*, %struct.TYPE_13__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %517, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %527 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %526, i32 0, i32 10
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = mul nsw i32 %525, %529
  %531 = load i32, i32* @CHARGALG_CURR_STEP_HIGH, align 4
  %532 = sdiv i32 %530, %531
  store i32 %532, i32* %5, align 4
  %533 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %534 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %535 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %534, i32 0, i32 7
  %536 = load %struct.TYPE_13__*, %struct.TYPE_13__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %536, i32 0, i32 1
  %538 = load %struct.TYPE_12__*, %struct.TYPE_12__** %537, align 8
  %539 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %540 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %539, i32 0, i32 7
  %541 = load %struct.TYPE_13__*, %struct.TYPE_13__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %538, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %544, i32 0, i32 10
  %546 = load i32, i32* %545, align 4
  %547 = load i32, i32* %5, align 4
  %548 = call i32 @abx500_chargalg_start_charging(%struct.abx500_chargalg* %533, i32 %546, i32 %547)
  br label %549

549:                                              ; preds = %512, %509
  %550 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %551 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %550, i32 143)
  %552 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %553 = call i32 @abx500_chargalg_start_safety_timer(%struct.abx500_chargalg* %552)
  %554 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %555 = call i32 @abx500_chargalg_stop_maintenance_timer(%struct.abx500_chargalg* %554)
  %556 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %557 = call i32 @init_maxim_chg_curr(%struct.abx500_chargalg* %556)
  %558 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %559 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %560 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %559, i32 0, i32 6
  store i8* %558, i8** %560, align 8
  %561 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %562 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %561, i32 0, i32 9
  store i32 0, i32* %562, align 4
  %563 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %564 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %563, i32 0, i32 1
  store i32 0, i32* %564, align 4
  %565 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %566 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %565, i32 0, i32 5
  %567 = load i32, i32* %566, align 8
  %568 = call i32 @power_supply_changed(i32 %567)
  br label %837

569:                                              ; preds = %255
  %570 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %571 = call i32 @handle_maxim_chg_curr(%struct.abx500_chargalg* %570)
  %572 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %573 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %572, i32 0, i32 6
  %574 = load i8*, i8** %573, align 8
  %575 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %576 = icmp eq i8* %574, %575
  br i1 %576, label %577, label %596

577:                                              ; preds = %569
  %578 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %579 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %596

582:                                              ; preds = %577
  %583 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %584 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %583, i32 0, i32 7
  %585 = load %struct.TYPE_13__*, %struct.TYPE_13__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %585, i32 0, i32 2
  %587 = load i32, i32* %586, align 8
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %592

589:                                              ; preds = %582
  %590 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %591 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %590, i32 130)
  br label %595

592:                                              ; preds = %582
  %593 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %594 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %593, i32 146)
  br label %595

595:                                              ; preds = %592, %589
  br label %596

596:                                              ; preds = %595, %577, %569
  br label %837

597:                                              ; preds = %255
  %598 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %599 = call i32 @abx500_chargalg_hold_charging(%struct.abx500_chargalg* %598)
  %600 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %601 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %600, i32 131)
  br label %602

602:                                              ; preds = %255, %597
  %603 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %604 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %603, i32 0, i32 8
  %605 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  %607 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %608 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %607, i32 0, i32 7
  %609 = load %struct.TYPE_13__*, %struct.TYPE_13__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 1
  %611 = load %struct.TYPE_12__*, %struct.TYPE_12__** %610, align 8
  %612 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %613 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %612, i32 0, i32 7
  %614 = load %struct.TYPE_13__*, %struct.TYPE_13__** %613, align 8
  %615 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %611, i64 %616
  %618 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %617, i32 0, i32 9
  %619 = load i32, i32* %618, align 4
  %620 = icmp sle i32 %606, %619
  br i1 %620, label %621, label %624

621:                                              ; preds = %602
  %622 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %623 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %622, i32 142)
  br label %624

624:                                              ; preds = %621, %602
  br label %837

625:                                              ; preds = %255
  %626 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %627 = call i32 @abx500_chargalg_stop_safety_timer(%struct.abx500_chargalg* %626)
  %628 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %629 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %630 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %629, i32 0, i32 7
  %631 = load %struct.TYPE_13__*, %struct.TYPE_13__** %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %631, i32 0, i32 1
  %633 = load %struct.TYPE_12__*, %struct.TYPE_12__** %632, align 8
  %634 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %635 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %634, i32 0, i32 7
  %636 = load %struct.TYPE_13__*, %struct.TYPE_13__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %633, i64 %638
  %640 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %639, i32 0, i32 8
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @abx500_chargalg_start_maintenance_timer(%struct.abx500_chargalg* %628, i32 %641)
  %643 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %644 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %645 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %644, i32 0, i32 7
  %646 = load %struct.TYPE_13__*, %struct.TYPE_13__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %646, i32 0, i32 1
  %648 = load %struct.TYPE_12__*, %struct.TYPE_12__** %647, align 8
  %649 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %650 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %649, i32 0, i32 7
  %651 = load %struct.TYPE_13__*, %struct.TYPE_13__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %648, i64 %653
  %655 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %654, i32 0, i32 7
  %656 = load i32, i32* %655, align 4
  %657 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %658 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %657, i32 0, i32 7
  %659 = load %struct.TYPE_13__*, %struct.TYPE_13__** %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %659, i32 0, i32 1
  %661 = load %struct.TYPE_12__*, %struct.TYPE_12__** %660, align 8
  %662 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %663 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %662, i32 0, i32 7
  %664 = load %struct.TYPE_13__*, %struct.TYPE_13__** %663, align 8
  %665 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %664, i32 0, i32 0
  %666 = load i64, i64* %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %661, i64 %666
  %668 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 4
  %670 = call i32 @abx500_chargalg_start_charging(%struct.abx500_chargalg* %643, i32 %656, i32 %669)
  %671 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %672 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %671, i32 147)
  %673 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %674 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %673, i32 0, i32 5
  %675 = load i32, i32* %674, align 8
  %676 = call i32 @power_supply_changed(i32 %675)
  br label %677

677:                                              ; preds = %255, %625
  %678 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %679 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %678, i32 0, i32 4
  %680 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %679, i32 0, i32 5
  %681 = load i32, i32* %680, align 8
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %688

683:                                              ; preds = %677
  %684 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %685 = call i32 @abx500_chargalg_stop_maintenance_timer(%struct.abx500_chargalg* %684)
  %686 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %687 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %686, i32 144)
  br label %688

688:                                              ; preds = %683, %677
  br label %837

689:                                              ; preds = %255
  %690 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %691 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %692 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %691, i32 0, i32 7
  %693 = load %struct.TYPE_13__*, %struct.TYPE_13__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %693, i32 0, i32 1
  %695 = load %struct.TYPE_12__*, %struct.TYPE_12__** %694, align 8
  %696 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %697 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %696, i32 0, i32 7
  %698 = load %struct.TYPE_13__*, %struct.TYPE_13__** %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %698, i32 0, i32 0
  %700 = load i64, i64* %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %695, i64 %700
  %702 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %701, i32 0, i32 6
  %703 = load i32, i32* %702, align 4
  %704 = call i32 @abx500_chargalg_start_maintenance_timer(%struct.abx500_chargalg* %690, i32 %703)
  %705 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %706 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %707 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %706, i32 0, i32 7
  %708 = load %struct.TYPE_13__*, %struct.TYPE_13__** %707, align 8
  %709 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %708, i32 0, i32 1
  %710 = load %struct.TYPE_12__*, %struct.TYPE_12__** %709, align 8
  %711 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %712 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %711, i32 0, i32 7
  %713 = load %struct.TYPE_13__*, %struct.TYPE_13__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %713, i32 0, i32 0
  %715 = load i64, i64* %714, align 8
  %716 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %710, i64 %715
  %717 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %716, i32 0, i32 5
  %718 = load i32, i32* %717, align 4
  %719 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %720 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %719, i32 0, i32 7
  %721 = load %struct.TYPE_13__*, %struct.TYPE_13__** %720, align 8
  %722 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %721, i32 0, i32 1
  %723 = load %struct.TYPE_12__*, %struct.TYPE_12__** %722, align 8
  %724 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %725 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %724, i32 0, i32 7
  %726 = load %struct.TYPE_13__*, %struct.TYPE_13__** %725, align 8
  %727 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %726, i32 0, i32 0
  %728 = load i64, i64* %727, align 8
  %729 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %723, i64 %728
  %730 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %729, i32 0, i32 2
  %731 = load i32, i32* %730, align 4
  %732 = call i32 @abx500_chargalg_start_charging(%struct.abx500_chargalg* %705, i32 %718, i32 %731)
  %733 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %734 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %733, i32 145)
  %735 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %736 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %735, i32 0, i32 5
  %737 = load i32, i32* %736, align 8
  %738 = call i32 @power_supply_changed(i32 %737)
  br label %739

739:                                              ; preds = %255, %689
  %740 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %741 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %740, i32 0, i32 4
  %742 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %741, i32 0, i32 5
  %743 = load i32, i32* %742, align 8
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %750

745:                                              ; preds = %739
  %746 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %747 = call i32 @abx500_chargalg_stop_maintenance_timer(%struct.abx500_chargalg* %746)
  %748 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %749 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %748, i32 142)
  br label %750

750:                                              ; preds = %745, %739
  br label %837

751:                                              ; preds = %255
  %752 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %753 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %754 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %753, i32 0, i32 7
  %755 = load %struct.TYPE_13__*, %struct.TYPE_13__** %754, align 8
  %756 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %755, i32 0, i32 1
  %757 = load %struct.TYPE_12__*, %struct.TYPE_12__** %756, align 8
  %758 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %759 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %758, i32 0, i32 7
  %760 = load %struct.TYPE_13__*, %struct.TYPE_13__** %759, align 8
  %761 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %760, i32 0, i32 0
  %762 = load i64, i64* %761, align 8
  %763 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %757, i64 %762
  %764 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %763, i32 0, i32 4
  %765 = load i32, i32* %764, align 4
  %766 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %767 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %766, i32 0, i32 7
  %768 = load %struct.TYPE_13__*, %struct.TYPE_13__** %767, align 8
  %769 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %768, i32 0, i32 1
  %770 = load %struct.TYPE_12__*, %struct.TYPE_12__** %769, align 8
  %771 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %772 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %771, i32 0, i32 7
  %773 = load %struct.TYPE_13__*, %struct.TYPE_13__** %772, align 8
  %774 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %773, i32 0, i32 0
  %775 = load i64, i64* %774, align 8
  %776 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %770, i64 %775
  %777 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %776, i32 0, i32 3
  %778 = load i32, i32* %777, align 4
  %779 = call i32 @abx500_chargalg_start_charging(%struct.abx500_chargalg* %752, i32 %765, i32 %778)
  %780 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %781 = call i32 @abx500_chargalg_stop_maintenance_timer(%struct.abx500_chargalg* %780)
  %782 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %783 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %784 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %783, i32 0, i32 6
  store i8* %782, i8** %784, align 8
  %785 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %786 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %785, i32 135)
  %787 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %788 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %787, i32 0, i32 5
  %789 = load i32, i32* %788, align 8
  %790 = call i32 @power_supply_changed(i32 %789)
  br label %791

791:                                              ; preds = %255, %751
  %792 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %793 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %792, i32 0, i32 4
  %794 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %793, i32 0, i32 4
  %795 = load i64, i64* %794, align 8
  %796 = icmp ne i64 %795, 0
  br i1 %796, label %800, label %797

797:                                              ; preds = %791
  %798 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %799 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %798, i32 142)
  br label %800

800:                                              ; preds = %797, %791
  br label %837

801:                                              ; preds = %255
  %802 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %803 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %802)
  %804 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %805 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %804, i32 129)
  br label %806

806:                                              ; preds = %255, %801
  %807 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %808 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %807, i32 0, i32 4
  %809 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %808, i32 0, i32 3
  %810 = load i64, i64* %809, align 8
  %811 = icmp ne i64 %810, 0
  br i1 %811, label %821, label %812

812:                                              ; preds = %806
  %813 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %814 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %813, i32 0, i32 4
  %815 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %814, i32 0, i32 2
  %816 = load i64, i64* %815, align 8
  %817 = icmp ne i64 %816, 0
  br i1 %817, label %821, label %818

818:                                              ; preds = %812
  %819 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %820 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %819, i32 142)
  br label %821

821:                                              ; preds = %818, %812, %806
  br label %837

822:                                              ; preds = %255
  %823 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %824 = call i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg* %823)
  %825 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %826 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %825, i32 133)
  br label %827

827:                                              ; preds = %255, %822
  %828 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %829 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %828, i32 0, i32 4
  %830 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %829, i32 0, i32 1
  %831 = load i64, i64* %830, align 8
  %832 = icmp ne i64 %831, 0
  br i1 %832, label %836, label %833

833:                                              ; preds = %827
  %834 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %835 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %834, i32 142)
  br label %836

836:                                              ; preds = %833, %827
  br label %837

837:                                              ; preds = %255, %836, %821, %800, %750, %688, %624, %596, %549, %501, %495, %474, %435, %414, %399, %364
  %838 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %839 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %838, i32 0, i32 0
  %840 = load i32, i32* %839, align 8
  %841 = icmp eq i32 %840, 142
  br i1 %841, label %852, label %842

842:                                              ; preds = %837
  %843 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %844 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %843, i32 0, i32 0
  %845 = load i32, i32* %844, align 8
  %846 = icmp eq i32 %845, 146
  br i1 %846, label %852, label %847

847:                                              ; preds = %842
  %848 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %849 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %848, i32 0, i32 0
  %850 = load i32, i32* %849, align 8
  %851 = icmp eq i32 %850, 144
  br i1 %851, label %852, label %859

852:                                              ; preds = %847, %842, %837
  %853 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %854 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %853, i32 0, i32 3
  %855 = load i32, i32* %854, align 4
  %856 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %857 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %856, i32 0, i32 2
  %858 = call i32 @queue_work(i32 %855, i32* %857)
  br label %859

859:                                              ; preds = %852, %847
  ret void
}

declare dso_local i32 @class_for_each_device(i32, i32*, i32, i32) #1

declare dso_local i32 @abx500_chargalg_end_of_charge(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_check_temp(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_check_charger_voltage(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_check_charger_connection(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_check_current_step_status(%struct.abx500_chargalg*) #1

declare dso_local i64 @is_ab8500(i32) #1

declare dso_local i32 @abx500_chargalg_check_charger_enable(%struct.abx500_chargalg*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @abx500_chargalg_state_to(%struct.abx500_chargalg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @abx500_chargalg_stop_charging(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_ac_en(%struct.abx500_chargalg*, i32, i32, i32) #1

declare dso_local i32 @abx500_chargalg_usb_en(%struct.abx500_chargalg*, i32, i32, i32) #1

declare dso_local i32 @abx500_chargalg_stop_safety_timer(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_stop_maintenance_timer(%struct.abx500_chargalg*) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i32 @abx500_chargalg_start_charging(%struct.abx500_chargalg*, i32, i32) #1

declare dso_local i32 @abx500_chargalg_start_safety_timer(%struct.abx500_chargalg*) #1

declare dso_local i32 @init_maxim_chg_curr(%struct.abx500_chargalg*) #1

declare dso_local i32 @handle_maxim_chg_curr(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_hold_charging(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_start_maintenance_timer(%struct.abx500_chargalg*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
