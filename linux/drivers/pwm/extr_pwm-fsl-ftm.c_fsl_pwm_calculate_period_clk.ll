; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_calculate_period_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_calculate_period_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pwm_chip = type { i32* }
%struct.fsl_pwm_periodcfg = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_pwm_chip*, i32, i32, %struct.fsl_pwm_periodcfg*)* @fsl_pwm_calculate_period_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pwm_calculate_period_clk(%struct.fsl_pwm_chip* %0, i32 %1, i32 %2, %struct.fsl_pwm_periodcfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_pwm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_pwm_periodcfg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.fsl_pwm_chip* %0, %struct.fsl_pwm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fsl_pwm_periodcfg* %3, %struct.fsl_pwm_periodcfg** %9, align 8
  %12 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %6, align 8
  %13 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @clk_get_rate(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = mul i64 %20, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @do_div(i64 %24, i64 1000000000)
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

29:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = icmp ule i64 %34, 65536
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %9, align 8
  %39 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %9, align 8
  %42 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %10, align 8
  %44 = sub i64 %43, 1
  %45 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %9, align 8
  %46 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  store i32 1, i32* %5, align 4
  br label %54

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load i64, i64* %10, align 8
  %52 = lshr i64 %51, 1
  store i64 %52, i64* %10, align 8
  br label %30

53:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %36, %28
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
