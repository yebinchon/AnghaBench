; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-jz4740.c_jz4740_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-jz4740.c_jz4740_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i64 }
%struct.jz4740_pwm_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@JZ_TIMER_CTRL_SRC_EXT = common dso_local global i32 0, align 4
@JZ_TIMER_CTRL_PWM_ABBRUPT_SHUTDOWN = common dso_local global i32 0, align 4
@JZ_TIMER_CTRL_PWM_ACTIVE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @jz4740_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.jz4740_pwm_chip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %14 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %15 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.jz4740_pwm_chip* @to_jz4740(i32 %16)
  store %struct.jz4740_pwm_chip* %17, %struct.jz4740_pwm_chip** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.jz4740_pwm_chip*, %struct.jz4740_pwm_chip** %8, align 8
  %19 = getelementptr inbounds %struct.jz4740_pwm_chip, %struct.jz4740_pwm_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @clk_get_rate(i32 %20)
  %22 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %23 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %21, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @do_div(i64 %26, i32 1000000000)
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %37, %3
  %30 = load i64, i64* %10, align 8
  %31 = icmp ugt i64 %30, 65535
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %33, 6
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load i64, i64* %10, align 8
  %39 = lshr i64 %38, 2
  store i64 %39, i64* %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %29

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %125

48:                                               ; preds = %42
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %51 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = mul i64 %49, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %56 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @do_div(i64 %54, i32 %58)
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %60, %61
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load i64, i64* %10, align 8
  %68 = sub i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %66, %48
  %70 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %71 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %72 = call i32 @jz4740_pwm_disable(%struct.pwm_chip* %70, %struct.pwm_device* %71)
  %73 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %74 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @jz4740_timer_set_count(i32 %75, i32 0)
  %77 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %78 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @jz4740_timer_set_duty(i32 %79, i64 %80)
  %82 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %83 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @jz4740_timer_set_period(i32 %84, i64 %85)
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @JZ_TIMER_CTRL_PRESCALER(i32 %87)
  %89 = load i32, i32* @JZ_TIMER_CTRL_SRC_EXT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @JZ_TIMER_CTRL_PWM_ABBRUPT_SHUTDOWN, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %13, align 4
  %93 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %94 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @jz4740_timer_set_ctrl(i32 %95, i32 %96)
  %98 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %99 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %110 [
    i32 128, label %101
    i32 129, label %106
  ]

101:                                              ; preds = %69
  %102 = load i32, i32* @JZ_TIMER_CTRL_PWM_ACTIVE_LOW, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %13, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %110

106:                                              ; preds = %69
  %107 = load i32, i32* @JZ_TIMER_CTRL_PWM_ACTIVE_LOW, align 4
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %69, %106, %101
  %111 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %112 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @jz4740_timer_set_ctrl(i32 %113, i32 %114)
  %116 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %117 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %122 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %123 = call i32 @jz4740_pwm_enable(%struct.pwm_chip* %121, %struct.pwm_device* %122)
  br label %124

124:                                              ; preds = %120, %110
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %45
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.jz4740_pwm_chip* @to_jz4740(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @jz4740_pwm_disable(%struct.pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @jz4740_timer_set_count(i32, i32) #1

declare dso_local i32 @jz4740_timer_set_duty(i32, i64) #1

declare dso_local i32 @jz4740_timer_set_period(i32, i64) #1

declare dso_local i32 @JZ_TIMER_CTRL_PRESCALER(i32) #1

declare dso_local i32 @jz4740_timer_set_ctrl(i32, i32) #1

declare dso_local i32 @jz4740_pwm_enable(%struct.pwm_chip*, %struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
