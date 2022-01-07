; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mtk-disp.c_mtk_disp_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mtk-disp.c_mtk_disp_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.mtk_disp_pwm = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PWM_PERIOD_BIT_WIDTH = common dso_local global i32 0, align 4
@PWM_CLKDIV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PWM_HIGH_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PWM_CLKDIV_MASK = common dso_local global i32 0, align 4
@PWM_CLKDIV_SHIFT = common dso_local global i32 0, align 4
@PWM_PERIOD_MASK = common dso_local global i32 0, align 4
@PWM_HIGH_WIDTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @mtk_disp_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_disp_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_disp_pwm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.mtk_disp_pwm* @to_mtk_disp_pwm(%struct.pwm_chip* %18)
  store %struct.mtk_disp_pwm* %19, %struct.mtk_disp_pwm** %10, align 8
  %20 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %21 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_get_rate(i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @NSEC_PER_SEC, align 4
  %28 = call i32 @div_u64(i32 %26, i32 %27)
  %29 = load i32, i32* @PWM_PERIOD_BIT_WIDTH, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @PWM_CLKDIV_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %152

37:                                               ; preds = %4
  %38 = load i32, i32* @NSEC_PER_SEC, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  %41 = mul nsw i32 %38, %40
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @div64_u64(i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %37
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @div64_u64(i32 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @PWM_HIGH_WIDTH_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  store i32 %62, i32* %14, align 4
  %63 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %64 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clk_enable(i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %5, align 4
  br label %152

71:                                               ; preds = %52
  %72 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %73 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clk_enable(i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %80 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @clk_disable(i32 %81)
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %5, align 4
  br label %152

84:                                               ; preds = %71
  %85 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %86 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %87 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PWM_CLKDIV_MASK, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @PWM_CLKDIV_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm* %85, i32 %90, i32 %91, i32 %94)
  %96 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %97 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %98 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PWM_PERIOD_MASK, align 4
  %103 = load i32, i32* @PWM_HIGH_WIDTH_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm* %96, i32 %101, i32 %104, i32 %105)
  %107 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %108 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %84
  %114 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %115 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %116 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %121 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %126 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm* %114, i32 %119, i32 %124, i32 %129)
  %131 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %132 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %133 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %138 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm* %131, i32 %136, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %113, %84
  %144 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %145 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @clk_disable(i32 %146)
  %148 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %10, align 8
  %149 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @clk_disable(i32 %150)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %143, %78, %69, %34
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.mtk_disp_pwm* @to_mtk_disp_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
