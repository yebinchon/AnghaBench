; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i64, i64 }
%struct.atmel_pwm_chip = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to calculate cprd and prescaler\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@PWM_CMR = common dso_local global i32 0, align 4
@PWM_CMR_CPRE_MSK = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i64 0, align 8
@PWM_CMR_CPOL = common dso_local global i32 0, align 4
@PWM_ISR = common dso_local global i32 0, align 4
@PWM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @atmel_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.atmel_pwm_chip*, align 8
  %9 = alloca %struct.pwm_state, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %15 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %16 = call %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip* %15)
  store %struct.atmel_pwm_chip* %16, %struct.atmel_pwm_chip** %8, align 8
  %17 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %18 = call i32 @pwm_get_state(%struct.pwm_device* %17, %struct.pwm_state* %9)
  %19 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %20 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %170

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %31 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %38 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %43 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %44 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %47 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @atmel_pwm_ch_readl(%struct.atmel_pwm_chip* %42, i32 %45, i32 %51)
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %10, align 8
  %54 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @atmel_pwm_calculate_cdty(%struct.pwm_state* %54, i64 %55, i64* %11)
  %57 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %58 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @atmel_pwm_update_cdty(%struct.pwm_chip* %57, %struct.pwm_device* %58, i64 %59)
  store i32 0, i32* %4, align 4
  br label %180

61:                                               ; preds = %34, %27, %23
  %62 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %63 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %64 = call i32 @atmel_pwm_calculate_cprd_and_pres(%struct.pwm_chip* %62, %struct.pwm_state* %63, i64* %10, i32* %12)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %69 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %4, align 4
  br label %180

73:                                               ; preds = %61
  %74 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @atmel_pwm_calculate_cdty(%struct.pwm_state* %74, i64 %75, i64* %11)
  %77 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %82 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %83 = call i32 @atmel_pwm_disable(%struct.pwm_chip* %81, %struct.pwm_device* %82, i32 0)
  br label %98

84:                                               ; preds = %73
  %85 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %86 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @clk_enable(i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %93 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %4, align 4
  br label %180

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %80
  %99 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %100 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %101 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PWM_CMR, align 4
  %104 = call i8* @atmel_pwm_ch_readl(%struct.atmel_pwm_chip* %99, i32 %102, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @PWM_CMR_CPRE_MSK, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @PWM_CMR_CPRE_MSK, align 4
  %112 = and i32 %110, %111
  %113 = or i32 %109, %112
  store i32 %113, i32* %13, align 4
  %114 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %115 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PWM_POLARITY_NORMAL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %98
  %120 = load i32, i32* @PWM_CMR_CPOL, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %13, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %13, align 4
  br label %128

124:                                              ; preds = %98
  %125 = load i32, i32* @PWM_CMR_CPOL, align 4
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %130 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %131 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PWM_CMR, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @atmel_pwm_ch_writel(%struct.atmel_pwm_chip* %129, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %137 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %11, align 8
  %140 = call i32 @atmel_pwm_set_cprd_cdty(%struct.pwm_chip* %136, %struct.pwm_device* %137, i64 %138, i64 %139)
  %141 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %142 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %141, i32 0, i32 1
  %143 = call i32 @mutex_lock(i32* %142)
  %144 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %145 = load i32, i32* @PWM_ISR, align 4
  %146 = call i32 @atmel_pwm_readl(%struct.atmel_pwm_chip* %144, i32 %145)
  %147 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %148 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %152 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 1, %153
  %155 = xor i32 %154, -1
  %156 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %157 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %161 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %160, i32 0, i32 1
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %8, align 8
  %164 = load i32, i32* @PWM_ENA, align 4
  %165 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %166 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 1, %167
  %169 = call i32 @atmel_pwm_writel(%struct.atmel_pwm_chip* %163, i32 %164, i32 %168)
  br label %179

170:                                              ; preds = %3
  %171 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %176 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %177 = call i32 @atmel_pwm_disable(%struct.pwm_chip* %175, %struct.pwm_device* %176, i32 1)
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %128
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %91, %67, %41
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.atmel_pwm_chip* @to_atmel_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i8* @atmel_pwm_ch_readl(%struct.atmel_pwm_chip*, i32, i32) #1

declare dso_local i32 @atmel_pwm_calculate_cdty(%struct.pwm_state*, i64, i64*) #1

declare dso_local i32 @atmel_pwm_update_cdty(%struct.pwm_chip*, %struct.pwm_device*, i64) #1

declare dso_local i32 @atmel_pwm_calculate_cprd_and_pres(%struct.pwm_chip*, %struct.pwm_state*, i64*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @atmel_pwm_disable(%struct.pwm_chip*, %struct.pwm_device*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @atmel_pwm_ch_writel(%struct.atmel_pwm_chip*, i32, i32, i32) #1

declare dso_local i32 @atmel_pwm_set_cprd_cdty(%struct.pwm_chip*, %struct.pwm_device*, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atmel_pwm_readl(%struct.atmel_pwm_chip*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atmel_pwm_writel(%struct.atmel_pwm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
