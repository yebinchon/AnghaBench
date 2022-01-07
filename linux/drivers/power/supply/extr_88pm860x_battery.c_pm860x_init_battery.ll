; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_init_battery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_init_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i64, i32, i32, i8*, i32, i32, i32 }

@MEAS1_GP1 = common dso_local global i32 0, align 4
@PM860X_TEMP_TINT = common dso_local global i64 0, align 8
@MEAS1_TINT = common dso_local global i32 0, align 4
@PM8607_MEAS_EN1 = common dso_local global i32 0, align 4
@MEAS3_IBAT = common dso_local global i32 0, align 4
@MEAS3_BAT_DET = common dso_local global i32 0, align 4
@MEAS3_CC = common dso_local global i32 0, align 4
@PM8607_MEAS_EN3 = common dso_local global i32 0, align 4
@PM8607_MEAS_OFF_TIME1 = common dso_local global i32 0, align 4
@PM8607_MEAS_OFF_TIME2 = common dso_local global i32 0, align 4
@PM8607_GPADC_MISC1 = common dso_local global i32 0, align 4
@GPMISC1_GPADC_EN = common dso_local global i32 0, align 4
@PM8607_CHG_CTRL6 = common dso_local global i32 0, align 4
@CC6_BAT_DET_GPADC1 = common dso_local global i32 0, align 4
@PM8607_CCNT = common dso_local global i32 0, align 4
@CCNT_AVG_SEL = common dso_local global i32 0, align 4
@PM8607_GP_BIAS2 = common dso_local global i32 0, align 4
@GPBIAS2_GPADC1_SET = common dso_local global i32 0, align 4
@PM8607_STATUS_2 = common dso_local global i32 0, align 4
@STATUS2_BAT = common dso_local global i32 0, align 4
@PM860X_TEMP_TBAT = common dso_local global i64 0, align 8
@OCV_MODE_ACTIVE = common dso_local global i32 0, align 4
@PM8607_POWER_UP_LOG = common dso_local global i32 0, align 4
@BAT_WU_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"battery wake up? %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@PM8607_RTC_MISC2 = common dso_local global i32 0, align 4
@PM8607_RTC1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"soc_rtc %d, soc_ocv :%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"init soc : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_battery_info*)* @pm860x_init_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm860x_init_battery(%struct.pm860x_battery_info* %0) #0 {
  %2 = alloca %struct.pm860x_battery_info*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %2, align 8
  %8 = load i32, i32* @MEAS1_GP1, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %10 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PM860X_TEMP_TINT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @MEAS1_TINT, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %20 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PM8607_MEAS_EN1, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pm860x_set_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %245

29:                                               ; preds = %18
  %30 = load i32, i32* @MEAS3_IBAT, align 4
  %31 = load i32, i32* @MEAS3_BAT_DET, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MEAS3_CC, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %36 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PM8607_MEAS_EN3, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @pm860x_set_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %245

45:                                               ; preds = %29
  %46 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %47 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PM8607_MEAS_OFF_TIME1, align 4
  %50 = call i32 @pm860x_reg_write(i32 %48, i32 %49, i32 130)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %245

54:                                               ; preds = %45
  %55 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %56 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PM8607_MEAS_OFF_TIME2, align 4
  %59 = call i32 @pm860x_reg_write(i32 %57, i32 %58, i32 108)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %245

63:                                               ; preds = %54
  %64 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %65 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PM8607_GPADC_MISC1, align 4
  %68 = load i32, i32* @GPMISC1_GPADC_EN, align 4
  %69 = load i32, i32* @GPMISC1_GPADC_EN, align 4
  %70 = call i32 @pm860x_set_bits(i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %245

74:                                               ; preds = %63
  %75 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %76 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PM8607_CHG_CTRL6, align 4
  %79 = load i32, i32* @CC6_BAT_DET_GPADC1, align 4
  %80 = load i32, i32* @CC6_BAT_DET_GPADC1, align 4
  %81 = call i32 @pm860x_set_bits(i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %245

85:                                               ; preds = %74
  %86 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %87 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PM8607_CCNT, align 4
  %90 = load i32, i32* @CCNT_AVG_SEL, align 4
  %91 = call i32 @pm860x_set_bits(i32 %88, i32 %89, i32 56, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %245

95:                                               ; preds = %85
  %96 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %97 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PM8607_GP_BIAS2, align 4
  %100 = load i32, i32* @GPBIAS2_GPADC1_SET, align 4
  %101 = call i32 @pm860x_set_bits(i32 %98, i32 %99, i32 240, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %245

105:                                              ; preds = %95
  %106 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %107 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %106, i32 0, i32 6
  %108 = call i32 @mutex_lock(i32* %107)
  %109 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %110 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PM8607_STATUS_2, align 4
  %113 = call i8* @pm860x_reg_read(i32 %111, i32 %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %105
  %118 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %119 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %118, i32 0, i32 6
  %120 = call i32 @mutex_unlock(i32* %119)
  br label %245

121:                                              ; preds = %105
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @STATUS2_BAT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %128 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %127, i32 0, i32 1
  store i32 1, i32* %128, align 8
  %129 = load i64, i64* @PM860X_TEMP_TBAT, align 8
  %130 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %131 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %138

132:                                              ; preds = %121
  %133 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %134 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %133, i32 0, i32 1
  store i32 0, i32* %134, align 8
  %135 = load i64, i64* @PM860X_TEMP_TINT, align 8
  %136 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %137 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %132, %126
  %139 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %140 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %139, i32 0, i32 6
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %143 = load i32, i32* @OCV_MODE_ACTIVE, align 4
  %144 = call i32 @calc_soc(%struct.pm860x_battery_info* %142, i32 %143, i32* %7)
  %145 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %146 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @PM8607_POWER_UP_LOG, align 4
  %149 = call i8* @pm860x_reg_read(i32 %147, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @BAT_WU_LOG, align 4
  %153 = and i32 %151, %152
  store i32 %153, i32* %6, align 4
  %154 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %155 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %161 = call i32 (i32, i8*, ...) @dev_dbg(i32 %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %219

164:                                              ; preds = %138
  %165 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %166 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PM8607_RTC_MISC2, align 4
  %169 = call i8* @pm860x_reg_read(i32 %167, i32 %168)
  %170 = ptrtoint i8* %169 to i8
  %171 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %170, i8* %171, align 1
  %172 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %173 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PM8607_RTC1, align 4
  %176 = call i8* @pm860x_reg_read(i32 %174, i32 %175)
  %177 = ptrtoint i8* %176 to i8
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 %177, i8* %178, align 1
  %179 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = and i32 %181, 3
  %183 = shl i32 %182, 5
  %184 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = ashr i32 %186, 3
  %188 = and i32 %187, 31
  %189 = or i32 %183, %188
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 15
  %193 = icmp sgt i32 %190, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %164
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %197 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  br label %212

198:                                              ; preds = %164
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %7, align 4
  %201 = sub nsw i32 %200, 15
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %206 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  br label %211

207:                                              ; preds = %198
  %208 = load i32, i32* %5, align 4
  %209 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %210 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %203
  br label %212

212:                                              ; preds = %211, %194
  %213 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %214 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %7, align 4
  %218 = call i32 (i32, i8*, ...) @dev_dbg(i32 %215, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %216, i32 %217)
  br label %230

219:                                              ; preds = %138
  %220 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %221 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @PM8607_POWER_UP_LOG, align 4
  %224 = load i32, i32* @BAT_WU_LOG, align 4
  %225 = load i32, i32* @BAT_WU_LOG, align 4
  %226 = call i32 @pm860x_set_bits(i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %229 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %219, %212
  %231 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %232 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %237 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %236, i32 0, i32 3
  store i8* %235, i8** %237, align 8
  %238 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %239 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %2, align 8
  %242 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i32, i8*, ...) @dev_dbg(i32 %240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %230, %117, %104, %94, %84, %73, %62, %53, %44, %28
  ret void
}

declare dso_local i32 @pm860x_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm860x_reg_write(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @pm860x_reg_read(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @calc_soc(%struct.pm860x_battery_info*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
