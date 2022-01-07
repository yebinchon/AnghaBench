; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i64 }
%struct.rockchip_pwm_chip = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PWM_LOCK_EN = common dso_local global i64 0, align 8
@PWM_POLARITY_MASK = common dso_local global i64 0, align 8
@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@PWM_DUTY_NEGATIVE = common dso_local global i64 0, align 8
@PWM_INACTIVE_POSITIVE = common dso_local global i64 0, align 8
@PWM_DUTY_POSITIVE = common dso_local global i64 0, align 8
@PWM_INACTIVE_NEGATIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @rockchip_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.rockchip_pwm_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %13 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %14 = call %struct.rockchip_pwm_chip* @to_rockchip_pwm_chip(%struct.pwm_chip* %13)
  store %struct.rockchip_pwm_chip* %14, %struct.rockchip_pwm_chip** %7, align 8
  %15 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %16 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_get_rate(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %21 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %26 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NSEC_PER_SEC, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i64 @DIV_ROUND_CLOSEST_ULL(i32 %24, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %35 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %40 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NSEC_PER_SEC, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i64 @DIV_ROUND_CLOSEST_ULL(i32 %38, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %48 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %51 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %49, %55
  %57 = call i64 @readl_relaxed(i64 %56)
  store i64 %57, i64* %12, align 8
  %58 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %59 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %3
  %65 = load i64, i64* @PWM_LOCK_EN, align 8
  %66 = load i64, i64* %12, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %70 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %73 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %71, %77
  %79 = call i32 @writel_relaxed(i64 %68, i64 %78)
  br label %80

80:                                               ; preds = %64, %3
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %83 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %86 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %84, %91
  %93 = call i32 @writel(i64 %81, i64 %92)
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %96 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %99 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %97, %104
  %106 = call i32 @writel(i64 %94, i64 %105)
  %107 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %108 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %80
  %114 = load i64, i64* @PWM_POLARITY_MASK, align 8
  %115 = xor i64 %114, -1
  %116 = load i64, i64* %12, align 8
  %117 = and i64 %116, %115
  store i64 %117, i64* %12, align 8
  %118 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %119 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load i64, i64* @PWM_DUTY_NEGATIVE, align 8
  %125 = load i64, i64* @PWM_INACTIVE_POSITIVE, align 8
  %126 = or i64 %124, %125
  %127 = load i64, i64* %12, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %12, align 8
  br label %135

129:                                              ; preds = %113
  %130 = load i64, i64* @PWM_DUTY_POSITIVE, align 8
  %131 = load i64, i64* @PWM_INACTIVE_NEGATIVE, align 8
  %132 = or i64 %130, %131
  %133 = load i64, i64* %12, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %129, %123
  br label %136

136:                                              ; preds = %135, %80
  %137 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %138 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load i64, i64* @PWM_LOCK_EN, align 8
  %145 = xor i64 %144, -1
  %146 = load i64, i64* %12, align 8
  %147 = and i64 %146, %145
  store i64 %147, i64* %12, align 8
  br label %148

148:                                              ; preds = %143, %136
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %151 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %154 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %152, %158
  %160 = call i32 @writel(i64 %149, i64 %159)
  ret void
}

declare dso_local %struct.rockchip_pwm_chip* @to_rockchip_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
