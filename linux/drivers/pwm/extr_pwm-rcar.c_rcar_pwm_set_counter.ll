; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_set_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_set_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pwm_chip = type { i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@RCAR_PWMCNT_CYC0_SHIFT = common dso_local global i64 0, align 8
@RCAR_PWMCNT_CYC0_MASK = common dso_local global i64 0, align 8
@RCAR_PWMCNT_PH0_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RCAR_PWMCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pwm_chip*, i32, i32, i32)* @rcar_pwm_set_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pwm_set_counter(%struct.rcar_pwm_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcar_pwm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rcar_pwm_chip* %0, %struct.rcar_pwm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %6, align 8
  %16 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @clk_get_rate(i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* @NSEC_PER_SEC, align 8
  %20 = mul i64 %19, 100
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %20, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @do_div(i64 %25, i64 %26)
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 100
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @do_div(i64 %31, i64 %32)
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @RCAR_PWMCNT_CYC0_SHIFT, align 8
  %36 = shl i64 %34, %35
  %37 = load i64, i64* @RCAR_PWMCNT_CYC0_MASK, align 8
  %38 = and i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 100
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @do_div(i64 %43, i64 %44)
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @RCAR_PWMCNT_PH0_MASK, align 8
  %48 = and i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %4
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %65

58:                                               ; preds = %52
  %59 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %6, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RCAR_PWMCNT, align 4
  %64 = call i32 @rcar_pwm_write(%struct.rcar_pwm_chip* %59, i32 %62, i32 %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @rcar_pwm_write(%struct.rcar_pwm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
