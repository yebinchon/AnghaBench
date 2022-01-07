; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-berlin.c_berlin_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-berlin.c_berlin_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.berlin_pwm_chip = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@BERLIN_PWM_MAX_TCNT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@BERLIN_PWM_CONTROL = common dso_local global i32 0, align 4
@BERLIN_PWM_PRESCALE_4096 = common dso_local global i32 0, align 4
@BERLIN_PWM_DUTY = common dso_local global i32 0, align 4
@BERLIN_PWM_TCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @berlin_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.berlin_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %17 = call %struct.berlin_pwm_chip* @to_berlin_pwm_chip(%struct.pwm_chip* %16)
  store %struct.berlin_pwm_chip* %17, %struct.berlin_pwm_chip** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.berlin_pwm_chip*, %struct.berlin_pwm_chip** %10, align 8
  %19 = getelementptr inbounds %struct.berlin_pwm_chip, %struct.berlin_pwm_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_get_rate(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %15, align 4
  %24 = mul nsw i32 %23, %22
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @NSEC_PER_SEC, align 4
  %27 = call i32 @do_div(i32 %25, i32 %26)
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @BERLIN_PWM_MAX_TCNT, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  %32 = load i32, i32* %15, align 4
  %33 = ashr i32 %32, 12
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @BERLIN_PWM_MAX_TCNT, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ERANGE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %89

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %15, align 4
  %45 = mul nsw i32 %44, %43
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @do_div(i32 %46, i32 %47)
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.berlin_pwm_chip*, %struct.berlin_pwm_chip** %10, align 8
  %51 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %52 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BERLIN_PWM_CONTROL, align 4
  %55 = call i32 @berlin_pwm_readl(%struct.berlin_pwm_chip* %50, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load i32, i32* @BERLIN_PWM_PRESCALE_4096, align 4
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %67

62:                                               ; preds = %41
  %63 = load i32, i32* @BERLIN_PWM_PRESCALE_4096, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.berlin_pwm_chip*, %struct.berlin_pwm_chip** %10, align 8
  %69 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %70 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @BERLIN_PWM_CONTROL, align 4
  %74 = call i32 @berlin_pwm_writel(%struct.berlin_pwm_chip* %68, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.berlin_pwm_chip*, %struct.berlin_pwm_chip** %10, align 8
  %76 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %77 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @BERLIN_PWM_DUTY, align 4
  %81 = call i32 @berlin_pwm_writel(%struct.berlin_pwm_chip* %75, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.berlin_pwm_chip*, %struct.berlin_pwm_chip** %10, align 8
  %83 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %84 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @BERLIN_PWM_TCNT, align 4
  %88 = call i32 @berlin_pwm_writel(%struct.berlin_pwm_chip* %82, i32 %85, i32 %86, i32 %87)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %67, %37
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.berlin_pwm_chip* @to_berlin_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @berlin_pwm_readl(%struct.berlin_pwm_chip*, i32, i32) #1

declare dso_local i32 @berlin_pwm_writel(%struct.berlin_pwm_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
