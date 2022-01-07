; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sun4i.c_sun4i_pwm_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sun4i.c_sun4i_pwm_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i8*, i8*, i32 }
%struct.sun4i_pwm_chip = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@PWM_CTRL_REG = common dso_local global i32 0, align 4
@PWM_PRESCAL_MASK = common dso_local global i64 0, align 8
@prescaler_table = common dso_local global i32* null, align 8
@PWM_ACT_STATE = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@PWM_CLK_GATING = common dso_local global i32 0, align 4
@PWM_EN = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @sun4i_pwm_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_pwm_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.sun4i_pwm_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %13 = call %struct.sun4i_pwm_chip* @to_sun4i_pwm_chip(%struct.pwm_chip* %12)
  store %struct.sun4i_pwm_chip* %13, %struct.sun4i_pwm_chip** %7, align 8
  %14 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %7, align 8
  %15 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_get_rate(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %7, align 8
  %19 = load i32, i32* @PWM_CTRL_REG, align 4
  %20 = call i32 @sun4i_pwm_readl(%struct.sun4i_pwm_chip* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %23 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @PWM_REG_PRESCAL(i32 %21, i32 %24)
  %26 = load i64, i64* @PWM_PRESCAL_MASK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %7, align 8
  %30 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %45

36:                                               ; preds = %28, %3
  %37 = load i32*, i32** @prescaler_table, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %40 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @PWM_REG_PRESCAL(i32 %38, i32 %41)
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %36, %35
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %119

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @PWM_ACT_STATE, align 4
  %52 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %53 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BIT_CH(i32 %51, i32 %54)
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %60 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %61 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %66

62:                                               ; preds = %49
  %63 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %64 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %65 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @PWM_CLK_GATING, align 4
  %69 = load i32, i32* @PWM_EN, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %72 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BIT_CH(i32 %70, i32 %73)
  %75 = and i32 %67, %74
  %76 = load i32, i32* @PWM_CLK_GATING, align 4
  %77 = load i32, i32* @PWM_EN, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %80 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @BIT_CH(i32 %78, i32 %81)
  %83 = icmp eq i32 %75, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %66
  %85 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %86 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %90

87:                                               ; preds = %66
  %88 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %89 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %7, align 8
  %92 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %93 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @PWM_CH_PRD(i32 %94)
  %96 = call i32 @sun4i_pwm_readl(%struct.sun4i_pwm_chip* %91, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @NSEC_PER_SEC, align 4
  %99 = mul i32 %97, %98
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @PWM_REG_DTY(i32 %100)
  %102 = mul i32 %99, %101
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %103, i32 %104)
  %106 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %107 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @NSEC_PER_SEC, align 4
  %110 = mul i32 %108, %109
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @PWM_REG_PRD(i32 %111)
  %113 = mul i32 %110, %112
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %114, i32 %115)
  %117 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %118 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %90, %48
  ret void
}

declare dso_local %struct.sun4i_pwm_chip* @to_sun4i_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @sun4i_pwm_readl(%struct.sun4i_pwm_chip*, i32) #1

declare dso_local i64 @PWM_REG_PRESCAL(i32, i32) #1

declare dso_local i32 @BIT_CH(i32, i32) #1

declare dso_local i32 @PWM_CH_PRD(i32) #1

declare dso_local i32 @PWM_REG_DTY(i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @PWM_REG_PRD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
