; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_raw_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_raw_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i64*, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.pwm_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@TIM_EGR = common dso_local global i32 0, align 4
@TIM_EGR_UG = common dso_local global i64 0, align 8
@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_CEN = common dso_local global i64 0, align 8
@STM32_TIMERS_DMA_CH1 = common dso_local global i32 0, align 4
@STM32_TIMERS_DMA_CH3 = common dso_local global i32 0, align 4
@TIM_CCER_CC12E = common dso_local global i64 0, align 8
@TIM_CCER_CC34E = common dso_local global i64 0, align 8
@TIM_CCR1 = common dso_local global i64 0, align 8
@TIM_CCR3 = common dso_local global i64 0, align 8
@TIM_CCER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pwm*, %struct.pwm_device*, i64, i64*, i64*)* @stm32_pwm_raw_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_raw_capture(%struct.stm32_pwm* %0, %struct.pwm_device* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.stm32_pwm*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %17 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %11, align 8
  %22 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %23 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TIM_EGR, align 4
  %26 = load i64, i64* @TIM_EGR_UG, align 8
  %27 = load i64, i64* @TIM_EGR_UG, align 8
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i64 %26, i64 %27)
  %29 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %30 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TIM_CR1, align 4
  %33 = load i64, i64* @TIM_CR1_CEN, align 8
  %34 = load i64, i64* @TIM_CR1_CEN, align 8
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i64 %33, i64 %34)
  %36 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %37 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i32, i32* @STM32_TIMERS_DMA_CH1, align 4
  br label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @STM32_TIMERS_DMA_CH3, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %12, align 4
  %46 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %47 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @TIM_CCER_CC12E, align 8
  br label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @TIM_CCER_CC34E, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %13, align 8
  %56 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %57 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* @TIM_CCR1, align 8
  br label %64

62:                                               ; preds = %54
  %63 = load i64, i64* @TIM_CCR3, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  store i64 %65, i64* %14, align 8
  %66 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %67 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TIM_CCER, align 4
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @regmap_update_bits(i32 %68, i32 %69, i64 %70, i64 %71)
  %73 = load %struct.device*, %struct.device** %11, align 8
  %74 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %75 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @stm32_timers_dma_burst_read(%struct.device* %73, i64* %76, i32 %77, i64 %78, i32 2, i32 2, i64 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %64
  br label %191

84:                                               ; preds = %64
  %85 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %86 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %91 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %89, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %84
  %97 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %98 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %103 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %101, %106
  %108 = load i64*, i64** %9, align 8
  store i64 %107, i64* %108, align 8
  br label %126

109:                                              ; preds = %84
  %110 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %111 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %114 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %112, %117
  %119 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %120 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %118, %123
  %125 = load i64*, i64** %9, align 8
  store i64 %124, i64* %125, align 8
  br label %126

126:                                              ; preds = %109, %96
  %127 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %128 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i64*, i64** %10, align 8
  store i64 0, i64* %134, align 8
  br label %178

135:                                              ; preds = %126
  %136 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %137 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %142 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp sle i64 %140, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %135
  %148 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %149 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %154 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %152, %157
  %159 = load i64*, i64** %10, align 8
  store i64 %158, i64* %159, align 8
  br label %177

160:                                              ; preds = %135
  %161 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %162 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %165 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %163, %168
  %170 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %171 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 3
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %169, %174
  %176 = load i64*, i64** %10, align 8
  store i64 %175, i64* %176, align 8
  br label %177

177:                                              ; preds = %160, %147
  br label %178

178:                                              ; preds = %177, %133
  %179 = load i64*, i64** %10, align 8
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %180, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i64*, i64** %9, align 8
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %10, align 8
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %188, %186
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %190, %83
  %192 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %193 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @TIM_CCER, align 4
  %196 = load i64, i64* %13, align 8
  %197 = call i32 @regmap_update_bits(i32 %194, i32 %195, i64 %196, i64 0)
  %198 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %199 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @TIM_CR1, align 4
  %202 = load i64, i64* @TIM_CR1_CEN, align 8
  %203 = call i32 @regmap_update_bits(i32 %200, i32 %201, i64 %202, i64 0)
  %204 = load i32, i32* %15, align 4
  ret i32 %204
}

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i32 @stm32_timers_dma_burst_read(%struct.device*, i64*, i32, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
