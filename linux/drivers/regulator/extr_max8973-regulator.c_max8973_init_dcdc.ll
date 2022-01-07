; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_init_dcdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_init_dcdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8973_chip = type { i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.max8973_regulator_platform_data = type { i32, i64 }

@MAX8973_CONTROL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"register %d read failed, err = %d\00", align 1
@MAX8973_RAMP_MASK = common dso_local global i32 0, align 4
@MAX8973_CONTROL_REMOTE_SENSE_ENABLE = common dso_local global i32 0, align 4
@MAX8973_SNS_ENABLE = common dso_local global i32 0, align 4
@MAX8973_CONTROL_FALLING_SLEW_RATE_ENABLE = common dso_local global i32 0, align 4
@MAX8973_NFSR_ENABLE = common dso_local global i32 0, align 4
@MAX8973_CONTROL_OUTPUT_ACTIVE_DISCH_ENABLE = common dso_local global i32 0, align 4
@MAX8973_AD_ENABLE = common dso_local global i32 0, align 4
@MAX8973_CONTROL_BIAS_ENABLE = common dso_local global i32 0, align 4
@MAX8973_BIAS_ENABLE = common dso_local global i32 0, align 4
@MAX8973_CONTROL_FREQ_SHIFT_9PER_ENABLE = common dso_local global i32 0, align 4
@MAX8973_FREQSHIFT_9PER = common dso_local global i32 0, align 4
@MAX77621_TJINT_WARNING_TEMP_120 = common dso_local global i64 0, align 8
@MAX77621 = common dso_local global i64 0, align 8
@MAX77621_T_JUNCTION_120 = common dso_local global i32 0, align 4
@MAX8973_CONTROL_PULL_DOWN_ENABLE = common dso_local global i32 0, align 4
@MAX8973_DISCH_ENBABLE = common dso_local global i32 0, align 4
@MAX8973_CONTROL_CLKADV_TRIP_MASK = common dso_local global i32 0, align 4
@MAX8973_CKKADV_TRIP_DISABLE = common dso_local global i32 0, align 4
@MAX8973_CKKADV_TRIP_75mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_CKKADV_TRIP_150mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_CKKADV_TRIP_75mV_PER_US_HIST_DIS = common dso_local global i32 0, align 4
@MAX8973_CONTROL_INDUCTOR_VALUE_MASK = common dso_local global i32 0, align 4
@MAX8973_INDUCTOR_NOMINAL = common dso_local global i32 0, align 4
@MAX8973_INDUCTOR_MIN_30_PER = common dso_local global i32 0, align 4
@MAX8973_INDUCTOR_PLUS_30_PER = common dso_local global i32 0, align 4
@MAX8973_INDUCTOR_PLUS_60_PER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"register %d write failed, err = %d\00", align 1
@MAX8973_CONTROL2 = common dso_local global i32 0, align 4
@MAX8973 = common dso_local global i64 0, align 8
@MAX8973_VOUT = common dso_local global i32 0, align 4
@MAX8973_VOUT_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"register %d update failed, err = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8973_chip*, %struct.max8973_regulator_platform_data*)* @max8973_init_dcdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8973_init_dcdc(%struct.max8973_chip* %0, %struct.max8973_regulator_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max8973_chip*, align 8
  %5 = alloca %struct.max8973_regulator_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max8973_chip* %0, %struct.max8973_chip** %4, align 8
  store %struct.max8973_regulator_platform_data* %1, %struct.max8973_regulator_platform_data** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %11 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX8973_CONTROL1, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %9)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %19 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAX8973_CONTROL1, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %243

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MAX8973_RAMP_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %46 [
    i32 131, label %30
    i32 129, label %34
    i32 128, label %38
    i32 130, label %42
  ]

30:                                               ; preds = %25
  %31 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %32 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 12000, i32* %33, align 8
  br label %46

34:                                               ; preds = %25
  %35 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %36 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 25000, i32* %37, align 8
  br label %46

38:                                               ; preds = %25
  %39 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %40 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 50000, i32* %41, align 8
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %44 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 200000, i32* %45, align 8
  br label %46

46:                                               ; preds = %25, %42, %38, %34, %30
  %47 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %48 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MAX8973_CONTROL_REMOTE_SENSE_ENABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @MAX8973_SNS_ENABLE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %59 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MAX8973_CONTROL_FALLING_SLEW_RATE_ENABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @MAX8973_NFSR_ENABLE, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MAX8973_CONTROL_OUTPUT_ACTIVE_DISCH_ENABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @MAX8973_AD_ENABLE, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %81 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MAX8973_CONTROL_BIAS_ENABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* @MAX8973_BIAS_ENABLE, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %91 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 20, i32* %92, align 4
  br label %97

93:                                               ; preds = %79
  %94 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %95 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 240, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %99 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MAX8973_CONTROL_FREQ_SHIFT_9PER_ENABLE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @MAX8973_FREQSHIFT_9PER, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %110 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MAX77621_TJINT_WARNING_TEMP_120, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %116 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MAX77621, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @MAX77621_T_JUNCTION_120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %120, %114, %108
  %125 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %126 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @MAX8973_CONTROL_PULL_DOWN_ENABLE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @MAX8973_DISCH_ENBABLE, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %131, %124
  %136 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %137 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MAX8973_CONTROL_CLKADV_TRIP_MASK, align 4
  %140 = and i32 %138, %139
  switch i32 %140, label %157 [
    i32 136, label %141
    i32 138, label %145
    i32 139, label %149
    i32 137, label %153
  ]

141:                                              ; preds = %135
  %142 = load i32, i32* @MAX8973_CKKADV_TRIP_DISABLE, align 4
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %157

145:                                              ; preds = %135
  %146 = load i32, i32* @MAX8973_CKKADV_TRIP_75mV_PER_US, align 4
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  br label %157

149:                                              ; preds = %135
  %150 = load i32, i32* @MAX8973_CKKADV_TRIP_150mV_PER_US, align 4
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %157

153:                                              ; preds = %135
  %154 = load i32, i32* @MAX8973_CKKADV_TRIP_75mV_PER_US_HIST_DIS, align 4
  %155 = load i32, i32* %8, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %135, %153, %149, %145, %141
  %158 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %5, align 8
  %159 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @MAX8973_CONTROL_INDUCTOR_VALUE_MASK, align 4
  %162 = and i32 %160, %161
  switch i32 %162, label %179 [
    i32 134, label %163
    i32 135, label %167
    i32 133, label %171
    i32 132, label %175
  ]

163:                                              ; preds = %157
  %164 = load i32, i32* @MAX8973_INDUCTOR_NOMINAL, align 4
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %179

167:                                              ; preds = %157
  %168 = load i32, i32* @MAX8973_INDUCTOR_MIN_30_PER, align 4
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %179

171:                                              ; preds = %157
  %172 = load i32, i32* @MAX8973_INDUCTOR_PLUS_30_PER, align 4
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  br label %179

175:                                              ; preds = %157
  %176 = load i32, i32* @MAX8973_INDUCTOR_PLUS_60_PER, align 4
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %157, %175, %171, %167, %163
  %180 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %181 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @MAX8973_CONTROL1, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @regmap_write(i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %179
  %189 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %190 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @MAX8973_CONTROL1, align 4
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @dev_err(i32 %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %192, i32 %193)
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %243

196:                                              ; preds = %179
  %197 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %198 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @MAX8973_CONTROL2, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @regmap_write(i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %196
  %206 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %207 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @MAX8973_CONTROL2, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @dev_err(i32 %208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %209, i32 %210)
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %3, align 4
  br label %243

213:                                              ; preds = %196
  %214 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %215 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %241

218:                                              ; preds = %213
  %219 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %220 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @MAX8973, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %218
  %225 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %226 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @MAX8973_VOUT, align 4
  %229 = load i32, i32* @MAX8973_VOUT_ENABLE, align 4
  %230 = call i32 @regmap_update_bits(i32 %227, i32 %228, i32 %229, i32 0)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %224
  %234 = load %struct.max8973_chip*, %struct.max8973_chip** %4, align 8
  %235 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @MAX8973_VOUT, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @dev_err(i32 %236, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %233, %224
  br label %241

241:                                              ; preds = %240, %218, %213
  %242 = load i32, i32* %6, align 4
  store i32 %242, i32* %3, align 4
  br label %243

243:                                              ; preds = %241, %205, %188, %17
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
