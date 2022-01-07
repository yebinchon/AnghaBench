; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_get_prescale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_get_prescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_pwm_chip = type { i32, i32, %struct.sti_pwm_compat_data* }
%struct.sti_pwm_compat_data = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_pwm_chip*, i64, i32*)* @sti_pwm_get_prescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_pwm_get_prescale(%struct.sti_pwm_chip* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sti_pwm_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sti_pwm_compat_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sti_pwm_chip* %0, %struct.sti_pwm_chip** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %13 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %12, i32 0, i32 2
  %14 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %13, align 8
  store %struct.sti_pwm_compat_data* %14, %struct.sti_pwm_compat_data** %8, align 8
  %15 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %16 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @clk_get_rate(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %23 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load i64, i64* @NSEC_PER_SEC, align 8
  %30 = load i64, i64* %9, align 8
  %31 = udiv i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %8, align 8
  %33 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %10, align 8
  %38 = mul i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = urem i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %63

46:                                               ; preds = %28
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = udiv i64 %47, %48
  %50 = sub i64 %49, 1
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.sti_pwm_compat_data*, %struct.sti_pwm_compat_data** %8, align 8
  %54 = getelementptr inbounds %struct.sti_pwm_compat_data, %struct.sti_pwm_compat_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %46
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %57, %43, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
