; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_calculate_cprd_and_pres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_calculate_cprd_and_pres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_state = type { i64 }
%struct.atmel_pwm_chip = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pres exceeds the maximum value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_state*, i64*, i64*)* @atmel_pwm_calculate_cprd_and_pres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pwm_calculate_cprd_and_pres(%struct.pwm_chip* %0, %struct.pwm_state* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.atmel_pwm_chip*, align 8
  %11 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_state* %1, %struct.pwm_state** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %13 = call %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip* %12)
  store %struct.atmel_pwm_chip* %13, %struct.atmel_pwm_chip** %10, align 8
  %14 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %15 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %10, align 8
  %18 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @clk_get_rate(i32 %19)
  %21 = load i64, i64* %11, align 8
  %22 = mul i64 %21, %20
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* @NSEC_PER_SEC, align 4
  %25 = call i32 @do_div(i64 %23, i32 %24)
  %26 = load i64*, i64** %9, align 8
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %40, %4
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %10, align 8
  %30 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %28, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  %42 = lshr i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %27

43:                                               ; preds = %27
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %10, align 8
  %47 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %45, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %55 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %63

60:                                               ; preds = %43
  %61 = load i64, i64* %11, align 8
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
