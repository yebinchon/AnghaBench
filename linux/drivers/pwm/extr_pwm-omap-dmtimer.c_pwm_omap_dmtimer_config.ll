; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-omap-dmtimer.c_pwm_omap_dmtimer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-omap-dmtimer.c_pwm_omap_dmtimer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_omap_dmtimer_chip = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32)*, %struct.clk* (i32)* }
%struct.clk = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"requested duty cycle: %d ns, period: %d ns\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid pmtimer fclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid pmtimer fclk rate\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"clk rate: %luHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"period %d ns too short for clock rate %lu Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"duty cycle %d ns is too short for clock rate %lu Hz\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"using minimum of 1 clock cycle\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"duty cycle %d ns is too long for period %d ns at clock rate %lu Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"using maximum of 1 clock cycle less than period\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"effective duty cycle: %lld ns, period: %lld ns\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@DM_TIMER_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"load value: %#08x (%d), match value: %#08x (%d)\0A\00", align 1
@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@PWM_OMAP_DMTIMER_TRIGGER_OVERFLOW_AND_COMPARE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @pwm_omap_dmtimer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_omap_dmtimer_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pwm_omap_dmtimer_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.clk*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.pwm_omap_dmtimer_chip* @to_pwm_omap_dmtimer_chip(%struct.pwm_chip* %18)
  store %struct.pwm_omap_dmtimer_chip* %19, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %20 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %21 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %27 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %31 = call i32 @pwm_get_duty_cycle(%struct.pwm_device* %30)
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %36 = call i32 @pwm_get_period(%struct.pwm_device* %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %40 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  store i32 0, i32* %5, align 4
  br label %224

42:                                               ; preds = %33, %4
  %43 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %44 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load %struct.clk* (i32)*, %struct.clk* (i32)** %46, align 8
  %48 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %49 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.clk* %47(i32 %50)
  store %struct.clk* %51, %struct.clk** %15, align 8
  %52 = load %struct.clk*, %struct.clk** %15, align 8
  %53 = icmp ne %struct.clk* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %42
  %55 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %56 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %218

59:                                               ; preds = %42
  %60 = load %struct.clk*, %struct.clk** %15, align 8
  %61 = call i64 @clk_get_rate(%struct.clk* %60)
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %16, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %66 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %218

69:                                               ; preds = %59
  %70 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %71 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %16, align 8
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* %16, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @pwm_omap_dmtimer_get_clock_cycles(i64 %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i64, i64* %16, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @pwm_omap_dmtimer_get_clock_cycles(i64 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %83, label %90

83:                                               ; preds = %69
  %84 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %85 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i64, i64* %16, align 8
  %89 = call i32 @dev_info(i32 %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %87, i64 %88)
  br label %218

90:                                               ; preds = %69
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %95 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i64, i64* %16, align 8
  %99 = call i32 (i32, i8*, ...) @dev_dbg(i32 %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %97, i64 %98)
  %100 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %101 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_dbg(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %123

104:                                              ; preds = %90
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %110 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i64, i64* %16, align 8
  %115 = call i32 (i32, i8*, ...) @dev_dbg(i32 %111, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %112, i32 %113, i64 %114)
  %116 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %117 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_dbg(i32 %118, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %108, %104
  br label %123

123:                                              ; preds = %122, %93
  %124 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %125 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* @NSEC_PER_SEC, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i64, i64* %16, align 8
  %132 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %130, i64 %131)
  %133 = load i64, i64* @NSEC_PER_SEC, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i64, i64* %16, align 8
  %138 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %136, i64 %137)
  %139 = call i32 (i32, i8*, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %132, i32 %138)
  %140 = load i32, i32* @DM_TIMER_MAX, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %140, %141
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %144, %145
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  %148 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %149 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %148, i32 0, i32 3
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = call i32 @pm_runtime_active(i32* %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %123
  %156 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %157 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i32 (i32)*, i32 (i32)** %159, align 8
  %161 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %162 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 %160(i32 %163)
  br label %165

165:                                              ; preds = %155, %123
  %166 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %167 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %166, i32 0, i32 2
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %169, align 8
  %171 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %172 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 %170(i32 %173, i32 1, i32 %174)
  %176 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %177 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %179, align 8
  %181 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %182 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %14, align 4
  %185 = call i32 %180(i32 %183, i32 1, i32 %184)
  %186 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %187 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 (i32, i8*, ...) @dev_dbg(i32 %188, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %195 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %194, i32 0, i32 2
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %197, align 8
  %199 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %200 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %203 = call i64 @pwm_get_polarity(%struct.pwm_device* %202)
  %204 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* @PWM_OMAP_DMTIMER_TRIGGER_OVERFLOW_AND_COMPARE, align 4
  %208 = call i32 %198(i32 %201, i32 %206, i32 1, i32 %207)
  %209 = load i32, i32* %17, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %165
  %212 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %213 = call i32 @pwm_omap_dmtimer_start(%struct.pwm_omap_dmtimer_chip* %212)
  br label %214

214:                                              ; preds = %211, %165
  %215 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %216 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %215, i32 0, i32 0
  %217 = call i32 @mutex_unlock(i32* %216)
  store i32 0, i32* %5, align 4
  br label %224

218:                                              ; preds = %83, %64, %54
  %219 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %10, align 8
  %220 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %219, i32 0, i32 0
  %221 = call i32 @mutex_unlock(i32* %220)
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %218, %214, %38
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local %struct.pwm_omap_dmtimer_chip* @to_pwm_omap_dmtimer_chip(%struct.pwm_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_get_duty_cycle(%struct.pwm_device*) #1

declare dso_local i32 @pwm_get_period(%struct.pwm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @pwm_omap_dmtimer_get_clock_cycles(i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i64) #1

declare dso_local i32 @pm_runtime_active(i32*) #1

declare dso_local i64 @pwm_get_polarity(%struct.pwm_device*) #1

declare dso_local i32 @pwm_omap_dmtimer_start(%struct.pwm_omap_dmtimer_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
