; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i64, i64, i64 }
%struct.pwm_imx27_chip = type { i64, i32 }

@MX3_PWMSAR = common dso_local global i64 0, align 8
@MX3_PWMPR = common dso_local global i64 0, align 8
@MX3_PWMCR_STOPEN = common dso_local global i64 0, align 8
@MX3_PWMCR_DOZEN = common dso_local global i64 0, align 8
@MX3_PWMCR_WAITEN = common dso_local global i64 0, align 8
@MX3_PWMCR_CLKSRC = common dso_local global i32 0, align 4
@MX3_PWMCR_CLKSRC_IPG_HIGH = common dso_local global i32 0, align 4
@MX3_PWMCR_DBGEN = common dso_local global i64 0, align 8
@MX3_PWMCR_EN = common dso_local global i64 0, align 8
@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@MX3_PWMCR_POUTC = common dso_local global i32 0, align 4
@MX3_PWMCR_POUTC_INVERTED = common dso_local global i32 0, align 4
@MX3_PWMCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_imx27_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_imx27_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pwm_imx27_chip*, align 8
  %12 = alloca %struct.pwm_state, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %17 = call %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip* %16)
  store %struct.pwm_imx27_chip* %17, %struct.pwm_imx27_chip** %11, align 8
  %18 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %19 = call i32 @pwm_get_state(%struct.pwm_device* %18, %struct.pwm_state* %12)
  %20 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %21 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %129

24:                                               ; preds = %3
  %25 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %11, align 8
  %26 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @clk_get_rate(i32 %27)
  store i64 %28, i64* %13, align 8
  %29 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %30 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %13, align 8
  %33 = mul i64 %32, %31
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @do_div(i64 %34, i32 1000000000)
  %36 = load i64, i64* %13, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = udiv i64 %37, 65536
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = udiv i64 %41, %40
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %45 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %43, %46
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %50 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @do_div(i64 %48, i32 %52)
  %54 = load i64, i64* %13, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ugt i64 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %24
  %58 = load i64, i64* %8, align 8
  %59 = sub i64 %58, 2
  store i64 %59, i64* %8, align 8
  br label %61

60:                                               ; preds = %24
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %60, %57
  %62 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %67 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %68 = call i32 @pwm_imx27_wait_fifo_slot(%struct.pwm_chip* %66, %struct.pwm_device* %67)
  br label %79

69:                                               ; preds = %61
  %70 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %71 = call i32 @pwm_imx27_clk_prepare_enable(%struct.pwm_chip* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %4, align 4
  br label %144

76:                                               ; preds = %69
  %77 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %78 = call i32 @pwm_imx27_sw_reset(%struct.pwm_chip* %77)
  br label %79

79:                                               ; preds = %76, %65
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %11, align 8
  %82 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MX3_PWMSAR, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i64 %80, i64 %85)
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %11, align 8
  %89 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MX3_PWMPR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i64 %87, i64 %92)
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @MX3_PWMCR_PRESCALER_SET(i64 %94)
  %96 = load i64, i64* @MX3_PWMCR_STOPEN, align 8
  %97 = or i64 %95, %96
  %98 = load i64, i64* @MX3_PWMCR_DOZEN, align 8
  %99 = or i64 %97, %98
  %100 = load i64, i64* @MX3_PWMCR_WAITEN, align 8
  %101 = or i64 %99, %100
  %102 = load i32, i32* @MX3_PWMCR_CLKSRC, align 4
  %103 = load i32, i32* @MX3_PWMCR_CLKSRC_IPG_HIGH, align 4
  %104 = call i64 @FIELD_PREP(i32 %102, i32 %103)
  %105 = or i64 %101, %104
  %106 = load i64, i64* @MX3_PWMCR_DBGEN, align 8
  %107 = or i64 %105, %106
  %108 = load i64, i64* @MX3_PWMCR_EN, align 8
  %109 = or i64 %107, %108
  store i64 %109, i64* %15, align 8
  %110 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %111 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %79
  %116 = load i32, i32* @MX3_PWMCR_POUTC, align 4
  %117 = load i32, i32* @MX3_PWMCR_POUTC_INVERTED, align 4
  %118 = call i64 @FIELD_PREP(i32 %116, i32 %117)
  %119 = load i64, i64* %15, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %15, align 8
  br label %121

121:                                              ; preds = %115, %79
  %122 = load i64, i64* %15, align 8
  %123 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %11, align 8
  %124 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MX3_PWMCR, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i64 %122, i64 %127)
  br label %143

129:                                              ; preds = %3
  %130 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %11, align 8
  %135 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MX3_PWMCR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i64 0, i64 %138)
  %140 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %141 = call i32 @pwm_imx27_clk_disable_unprepare(%struct.pwm_chip* %140)
  br label %142

142:                                              ; preds = %133, %129
  br label %143

143:                                              ; preds = %142, %121
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %74
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @pwm_imx27_wait_fifo_slot(%struct.pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @pwm_imx27_clk_prepare_enable(%struct.pwm_chip*) #1

declare dso_local i32 @pwm_imx27_sw_reset(%struct.pwm_chip*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @MX3_PWMCR_PRESCALER_SET(i64) #1

declare dso_local i64 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @pwm_imx27_clk_disable_unprepare(%struct.pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
