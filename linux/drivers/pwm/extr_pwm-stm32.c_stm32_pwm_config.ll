; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i64, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@MAX_TIM_PSC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIM_PSC = common dso_local global i32 0, align 4
@TIM_ARR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_ARPE = common dso_local global i32 0, align 4
@CCMR_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@TIM_CCMR_PE = common dso_local global i32 0, align 4
@TIM_CCMR_M1 = common dso_local global i32 0, align 4
@CCMR_CHANNEL_MASK = common dso_local global i32 0, align 4
@TIM_CCMR1 = common dso_local global i32 0, align 4
@TIM_CCMR2 = common dso_local global i32 0, align 4
@TIM_BDTR = common dso_local global i32 0, align 4
@TIM_BDTR_MOE = common dso_local global i32 0, align 4
@TIM_BDTR_AOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pwm*, i32, i32, i32)* @stm32_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_config(%struct.stm32_pwm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_pwm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %20 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @clk_get_rate(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %22, %24
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* @NSEC_PER_SEC, align 4
  %28 = call i32 @do_div(i64 %26, i32 %27)
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %36, %4
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %33 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, i32* %13, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %13, align 4
  %42 = add i32 %41, 1
  %43 = call i32 @do_div(i64 %40, i32 %42)
  br label %30

44:                                               ; preds = %30
  %45 = load i64, i64* %11, align 8
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @MAX_TIM_PSC, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %160

52:                                               ; preds = %44
  %53 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %54 = call i32 @active_channels(%struct.stm32_pwm* %53)
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 4
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %52
  %62 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %63 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TIM_PSC, align 4
  %66 = call i32 @regmap_read(i32 %64, i32 %65, i32* %17)
  %67 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %68 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TIM_ARR, align 4
  %71 = call i32 @regmap_read(i32 %69, i32 %70, i32* %18)
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %18, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %10, align 8
  %79 = sub i64 %78, 1
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %61
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %160

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %52
  %86 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %87 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TIM_PSC, align 4
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = call i32 @regmap_write(i32 %88, i32 %89, i64 %91)
  %93 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %94 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TIM_ARR, align 4
  %97 = load i64, i64* %10, align 8
  %98 = sub i64 %97, 1
  %99 = call i32 @regmap_write(i32 %95, i32 %96, i64 %98)
  %100 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %101 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TIM_CR1, align 4
  %104 = load i32, i32* @TIM_CR1_ARPE, align 4
  %105 = load i32, i32* @TIM_CR1_ARPE, align 4
  %106 = call i32 @regmap_update_bits(i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %107, %109
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @do_div(i64 %111, i32 %112)
  %114 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i64, i64* %12, align 8
  %117 = call i32 @write_ccrx(%struct.stm32_pwm* %114, i32 %115, i64 %116)
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 1
  %120 = load i32, i32* @CCMR_CHANNEL_SHIFT, align 4
  %121 = mul nsw i32 %119, %120
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* @TIM_CCMR_PE, align 4
  %123 = load i32, i32* @TIM_CCMR_M1, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* %16, align 4
  %126 = shl i32 %124, %125
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* @CCMR_CHANNEL_MASK, align 4
  %128 = load i32, i32* %16, align 4
  %129 = shl i32 %127, %128
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %140

132:                                              ; preds = %85
  %133 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %134 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TIM_CCMR1, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @regmap_update_bits(i32 %135, i32 %136, i32 %137, i32 %138)
  br label %148

140:                                              ; preds = %85
  %141 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %142 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TIM_CCMR2, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @regmap_update_bits(i32 %143, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %140, %132
  %149 = load %struct.stm32_pwm*, %struct.stm32_pwm** %6, align 8
  %150 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @TIM_BDTR, align 4
  %153 = load i32, i32* @TIM_BDTR_MOE, align 4
  %154 = load i32, i32* @TIM_BDTR_AOE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @TIM_BDTR_MOE, align 4
  %157 = load i32, i32* @TIM_BDTR_AOE, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @regmap_update_bits(i32 %151, i32 %152, i32 %155, i32 %158)
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %148, %81, %49
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @active_channels(%struct.stm32_pwm*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @write_ccrx(%struct.stm32_pwm*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
