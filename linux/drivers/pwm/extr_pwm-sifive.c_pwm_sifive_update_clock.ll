; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_update_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_update_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_sifive_ddata = type { i64, i8*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@PWM_SIFIVE_CMPWIDTH = common dso_local global i32 0, align 4
@PWM_SIFIVE_PWMCFG_EN_ALWAYS = common dso_local global i32 0, align 4
@PWM_SIFIVE_PWMCFG_SCALE = common dso_local global i32 0, align 4
@PWM_SIFIVE_PWMCFG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"New real_period = %u ns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_sifive_ddata*, i64)* @pwm_sifive_update_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_sifive_update_clock(%struct.pwm_sifive_ddata* %0, i64 %1) #0 {
  %3 = alloca %struct.pwm_sifive_ddata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwm_sifive_ddata* %0, %struct.pwm_sifive_ddata** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %10 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = mul i64 %11, %12
  %14 = load i64, i64* @NSEC_PER_SEC, align 8
  %15 = call i8* @div64_ul(i64 %13, i64 %14)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @ilog2(i64 %17)
  %19 = load i32, i32* @PWM_SIFIVE_CMPWIDTH, align 4
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %18, %20
  %22 = call i32 @clamp(i64 %21, i32 0, i32 15)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @PWM_SIFIVE_PWMCFG_EN_ALWAYS, align 4
  %24 = load i32, i32* @PWM_SIFIVE_PWMCFG_SCALE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @FIELD_PREP(i32 %24, i32 %25)
  %27 = or i32 %23, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %30 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PWM_SIFIVE_PWMCFG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load i64, i64* @NSEC_PER_SEC, align 8
  %36 = load i32, i32* @PWM_SIFIVE_CMPWIDTH, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = shl i64 %35, %39
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i8* @div64_ul(i64 %41, i64 %42)
  %44 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %45 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %47 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %51 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %52)
  ret void
}

declare dso_local i8* @div64_ul(i64, i64) #1

declare dso_local i32 @clamp(i64, i32, i32) #1

declare dso_local i64 @ilog2(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
