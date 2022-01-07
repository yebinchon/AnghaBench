; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_periodcfg_are_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_periodcfg_are_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pwm_periodcfg = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg*)* @fsl_pwm_periodcfg_are_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pwm_periodcfg_are_equal(%struct.fsl_pwm_periodcfg* %0, %struct.fsl_pwm_periodcfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_pwm_periodcfg*, align 8
  %5 = alloca %struct.fsl_pwm_periodcfg*, align 8
  store %struct.fsl_pwm_periodcfg* %0, %struct.fsl_pwm_periodcfg** %4, align 8
  store %struct.fsl_pwm_periodcfg* %1, %struct.fsl_pwm_periodcfg** %5, align 8
  %6 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %4, align 8
  %7 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %5, align 8
  %10 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %5, align 8
  %19 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %4, align 8
  %25 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %5, align 8
  %28 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %22, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
