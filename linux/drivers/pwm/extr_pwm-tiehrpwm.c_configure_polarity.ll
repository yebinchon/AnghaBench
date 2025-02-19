; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_configure_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_configure_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehrpwm_pwm_chip = type { i64*, i32 }

@AQCTLB = common dso_local global i32 0, align 4
@AQCTL_CBU_MASK = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@AQCTL_CHANB_POLINVERSED = common dso_local global i32 0, align 4
@AQCTL_CHANB_POLNORMAL = common dso_local global i32 0, align 4
@AQCTLA = common dso_local global i32 0, align 4
@AQCTL_CAU_MASK = common dso_local global i32 0, align 4
@AQCTL_CHANA_POLINVERSED = common dso_local global i32 0, align 4
@AQCTL_CHANA_POLNORMAL = common dso_local global i32 0, align 4
@AQCTL_PRD_MASK = common dso_local global i32 0, align 4
@AQCTL_ZRO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehrpwm_pwm_chip*, i32)* @configure_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_polarity(%struct.ehrpwm_pwm_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ehrpwm_pwm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ehrpwm_pwm_chip* %0, %struct.ehrpwm_pwm_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* @AQCTLB, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @AQCTL_CBU_MASK, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %3, align 8
  %14 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i32, i32* @AQCTL_CHANB_POLINVERSED, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %10
  %25 = load i32, i32* @AQCTL_CHANB_POLNORMAL, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %44

27:                                               ; preds = %2
  %28 = load i32, i32* @AQCTLA, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @AQCTL_CAU_MASK, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %3, align 8
  %31 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @AQCTL_CHANA_POLINVERSED, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @AQCTL_CHANA_POLNORMAL, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* @AQCTL_PRD_MASK, align 4
  %46 = load i32, i32* @AQCTL_ZRO_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %3, align 8
  %51 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ehrpwm_modify(i32 %52, i32 %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @ehrpwm_modify(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
