; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i32, i32 }
%struct.pwm_sifive_ddata = type { i32, i64 }

@PWM_SIFIVE_PWMCMP0 = common dso_local global i64 0, align 8
@PWM_SIFIVE_SIZE_PWMCMP = common dso_local global i32 0, align 4
@PWM_SIFIVE_PWMCFG = common dso_local global i64 0, align 8
@PWM_SIFIVE_PWMCFG_EN_ALWAYS = common dso_local global i64 0, align 8
@PWM_SIFIVE_CMPWIDTH = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_sifive_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_sifive_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.pwm_sifive_ddata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %11 = call %struct.pwm_sifive_ddata* @pwm_sifive_chip_to_ddata(%struct.pwm_chip* %10)
  store %struct.pwm_sifive_ddata* %11, %struct.pwm_sifive_ddata** %7, align 8
  %12 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %7, align 8
  %13 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PWM_SIFIVE_PWMCMP0, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %18 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PWM_SIFIVE_SIZE_PWMCMP, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %16, %22
  %24 = call i64 @readl(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %29 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %7, align 8
  %31 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PWM_SIFIVE_PWMCFG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @readl(i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @PWM_SIFIVE_PWMCFG_EN_ALWAYS, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %42 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %3
  %44 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %7, align 8
  %45 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %48 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %8, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %7, align 8
  %52 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load i32, i32* @PWM_SIFIVE_CMPWIDTH, align 4
  %56 = ashr i32 %54, %55
  %57 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %58 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %60 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %61 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  ret void
}

declare dso_local %struct.pwm_sifive_ddata* @pwm_sifive_chip_to_ddata(%struct.pwm_chip*) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
