; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i8*, i8* }
%struct.rockchip_pwm_chip = type { i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PWM_DUTY_POSITIVE = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @rockchip_pwm_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pwm_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.rockchip_pwm_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %13 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %14 = call %struct.rockchip_pwm_chip* @to_rockchip_pwm_chip(%struct.pwm_chip* %13)
  store %struct.rockchip_pwm_chip* %14, %struct.rockchip_pwm_chip** %7, align 8
  %15 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %16 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %21 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_enable(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %147

27:                                               ; preds = %3
  %28 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %29 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @clk_get_rate(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %33 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %36 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %34, %40
  %42 = call i8* @readl_relaxed(i64 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %45 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NSEC_PER_SEC, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %53, i64 %54)
  %56 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %57 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %59 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %62 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %60, %66
  %68 = call i8* @readl_relaxed(i64 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %71 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NSEC_PER_SEC, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i64, i64* %9, align 8
  %81 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %79, i64 %80)
  %82 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %83 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %85 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %88 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %86, %92
  %94 = call i8* @readl_relaxed(i64 %93)
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %97 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %27
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 0, i32 1
  %110 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %111 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %122

112:                                              ; preds = %27
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %121 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %112, %102
  %123 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %124 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @PWM_DUTY_POSITIVE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %136 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %137 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %142

138:                                              ; preds = %129, %122
  %139 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %140 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %141 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %7, align 8
  %144 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @clk_disable(i32 %145)
  br label %147

147:                                              ; preds = %142, %26
  ret void
}

declare dso_local %struct.rockchip_pwm_chip* @to_rockchip_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i8* @DIV_ROUND_CLOSEST_ULL(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
