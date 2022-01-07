; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_lpss_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pwm_device = type { i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@PWM_ON_TIME_DIV_MASK = common dso_local global i64 0, align 8
@PWM_BASE_UNIT_SHIFT = common dso_local global i64 0, align 8
@PWM_SW_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_lpss_chip*, %struct.pwm_device*, i32, i32)* @pwm_lpss_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_lpss_prepare(%struct.pwm_lpss_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pwm_lpss_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.pwm_lpss_chip* %0, %struct.pwm_lpss_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %5, align 8
  %17 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* @NSEC_PER_SEC, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @do_div(i64 %22, i32 %23)
  %25 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %5, align 8
  %26 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BIT(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %13, align 8
  %35 = mul i64 %34, %33
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @DIV_ROUND_CLOSEST_ULL(i64 %36, i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 255, %40
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @do_div(i64 %42, i32 %43)
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 255, %45
  store i64 %46, i64* %9, align 8
  %47 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %48 = call i64 @pwm_lpss_read(%struct.pwm_device* %47)
  store i64 %48, i64* %15, align 8
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* @PWM_ON_TIME_DIV_MASK, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %15, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @PWM_BASE_UNIT_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %15, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @PWM_BASE_UNIT_SHIFT, align 8
  %64 = shl i64 %62, %63
  %65 = load i64, i64* %15, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %15, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %4
  %74 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @pwm_lpss_write(%struct.pwm_device* %74, i64 %75)
  %77 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* @PWM_SW_UPDATE, align 8
  %80 = or i64 %78, %79
  %81 = call i32 @pwm_lpss_write(%struct.pwm_device* %77, i64 %80)
  br label %82

82:                                               ; preds = %73, %4
  ret void
}

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i64, i64) #1

declare dso_local i64 @pwm_lpss_read(%struct.pwm_device*) #1

declare dso_local i32 @pwm_lpss_write(%struct.pwm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
