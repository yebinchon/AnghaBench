; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pca9685.c_pca9685_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pca9685.c_pca9685_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.pca9685 = type { i32, i32, i32 }

@PCA9685_OSC_CLOCK_MHZ = common dso_local global i32 0, align 4
@PCA9685_COUNTER_RANGE = common dso_local global i32 0, align 4
@PCA9685_PRESCALE_MIN = common dso_local global i32 0, align 4
@PCA9685_PRESCALE_MAX = common dso_local global i32 0, align 4
@PCA9685_PRESCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"prescaler not set: period out of bounds!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCA9685_MAXCHAN = common dso_local global i64 0, align 8
@PCA9685_ALL_LED_OFF_H = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@PCA9685_ALL_LED_OFF_L = common dso_local global i32 0, align 4
@PCA9685_ALL_LED_ON_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @pca9685_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9685_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pca9685*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %15 = call %struct.pca9685* @to_pca(%struct.pwm_chip* %14)
  store %struct.pca9685* %15, %struct.pca9685** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %18 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %4
  %22 = load i32, i32* @PCA9685_OSC_CLOCK_MHZ, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @PCA9685_COUNTER_RANGE, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = call i32 @DIV_ROUND_CLOSEST(i32 %24, i32 %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @PCA9685_PRESCALE_MIN, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %21
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @PCA9685_PRESCALE_MAX, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %38 = call i32 @pca9685_set_sleep_mode(%struct.pca9685* %37, i32 1)
  %39 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %40 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCA9685_PRESCALE, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @regmap_write(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %46 = call i32 @pca9685_set_sleep_mode(%struct.pca9685* %45, i32 0)
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %49 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %57

50:                                               ; preds = %32, %21
  %51 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %52 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %214

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57, %4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %61 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %66 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @PCA9685_ALL_LED_OFF_H, align 4
  store i32 %71, i32* %12, align 4
  br label %77

72:                                               ; preds = %64
  %73 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %74 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @LED_N_OFF_H(i64 %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %72, %70
  %78 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %79 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @LED_FULL, align 4
  %83 = call i32 @regmap_write(i32 %80, i32 %81, i32 %82)
  store i32 0, i32* %5, align 4
  br label %214

84:                                               ; preds = %58
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %144

88:                                               ; preds = %84
  %89 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %90 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @PCA9685_ALL_LED_OFF_L, align 4
  store i32 %95, i32* %12, align 4
  br label %101

96:                                               ; preds = %88
  %97 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %98 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @LED_N_OFF_L(i64 %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %96, %94
  %102 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %103 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @regmap_write(i32 %104, i32 %105, i32 0)
  %107 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %108 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* @PCA9685_ALL_LED_OFF_H, align 4
  store i32 %113, i32* %12, align 4
  br label %119

114:                                              ; preds = %101
  %115 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %116 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @LED_N_OFF_H(i64 %117)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %114, %112
  %120 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %121 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @regmap_write(i32 %122, i32 %123, i32 0)
  %125 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %126 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i32, i32* @PCA9685_ALL_LED_ON_H, align 4
  store i32 %131, i32* %12, align 4
  br label %137

132:                                              ; preds = %119
  %133 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %134 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @LED_N_ON_H(i64 %135)
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %132, %130
  %138 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %139 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @LED_FULL, align 4
  %143 = call i32 @regmap_write(i32 %140, i32 %141, i32 %142)
  store i32 0, i32* %5, align 4
  br label %214

144:                                              ; preds = %84
  %145 = load i32, i32* @PCA9685_COUNTER_RANGE, align 4
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %146, %148
  store i64 %149, i64* %11, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i64 @DIV_ROUND_UP_ULL(i64 %150, i32 %151)
  store i64 %152, i64* %11, align 8
  %153 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %154 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %144
  %159 = load i32, i32* @PCA9685_ALL_LED_OFF_L, align 4
  store i32 %159, i32* %12, align 4
  br label %165

160:                                              ; preds = %144
  %161 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %162 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @LED_N_OFF_L(i64 %163)
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %160, %158
  %166 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %167 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i64, i64* %11, align 8
  %171 = trunc i64 %170 to i32
  %172 = and i32 %171, 255
  %173 = call i32 @regmap_write(i32 %168, i32 %169, i32 %172)
  %174 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %175 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %178 = icmp sge i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %165
  %180 = load i32, i32* @PCA9685_ALL_LED_OFF_H, align 4
  store i32 %180, i32* %12, align 4
  br label %186

181:                                              ; preds = %165
  %182 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %183 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @LED_N_OFF_H(i64 %184)
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %181, %179
  %187 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %188 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i64, i64* %11, align 8
  %192 = trunc i64 %191 to i32
  %193 = ashr i32 %192, 8
  %194 = and i32 %193, 15
  %195 = call i32 @regmap_write(i32 %189, i32 %190, i32 %194)
  %196 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %197 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %200 = icmp sge i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %186
  %202 = load i32, i32* @PCA9685_ALL_LED_ON_H, align 4
  store i32 %202, i32* %12, align 4
  br label %208

203:                                              ; preds = %186
  %204 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %205 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @LED_N_ON_H(i64 %206)
  store i32 %207, i32* %12, align 4
  br label %208

208:                                              ; preds = %203, %201
  %209 = load %struct.pca9685*, %struct.pca9685** %10, align 8
  %210 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @regmap_write(i32 %211, i32 %212, i32 0)
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %208, %137, %77, %50
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local %struct.pca9685* @to_pca(%struct.pwm_chip*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @pca9685_set_sleep_mode(%struct.pca9685*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @LED_N_OFF_H(i64) #1

declare dso_local i32 @LED_N_OFF_L(i64) #1

declare dso_local i32 @LED_N_ON_H(i64) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
