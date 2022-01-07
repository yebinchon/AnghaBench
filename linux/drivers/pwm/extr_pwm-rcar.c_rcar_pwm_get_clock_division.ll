; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_get_clock_division.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rcar.c_rcar_pwm_get_clock_division.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pwm_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@RCAR_PWM_MAX_CYCLE = common dso_local global i64 0, align 8
@RCAR_PWM_MAX_DIVISION = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pwm_chip*, i32)* @rcar_pwm_get_clock_division to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pwm_get_clock_division(%struct.rcar_pwm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_pwm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rcar_pwm_chip* %0, %struct.rcar_pwm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rcar_pwm_chip*, %struct.rcar_pwm_chip** %4, align 8
  %10 = getelementptr inbounds %struct.rcar_pwm_chip, %struct.rcar_pwm_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load i64, i64* @NSEC_PER_SEC, align 8
  %20 = load i64, i64* @RCAR_PWM_MAX_CYCLE, align 8
  %21 = mul i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %25, %26
  %28 = sub i64 %27, 1
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @div64_u64(i64 %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %32, 1
  %34 = call i32 @ilog2(i64 %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @RCAR_PWM_MAX_DIVISION, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = load i64, i64* %7, align 8
  br label %46

42:                                               ; preds = %18
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i64 [ %41, %40 ], [ %45, %42 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @div64_u64(i64, i64) #1

declare dso_local i32 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
