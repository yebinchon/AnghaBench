; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-zx.c_zx_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-zx.c_zx_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i64, i64, i64 }
%struct.zx_pwm_chip = type { i32 }

@ZX_PWM_MODE = common dso_local global i32 0, align 4
@ZX_PWM_POLAR = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@ZX_PWM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @zx_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.zx_pwm_chip*, align 8
  %9 = alloca %struct.pwm_state, align 8
  %10 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %11 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %12 = call %struct.zx_pwm_chip* @to_zx_pwm_chip(%struct.pwm_chip* %11)
  store %struct.zx_pwm_chip* %12, %struct.zx_pwm_chip** %8, align 8
  %13 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %14 = call i32 @pwm_get_state(%struct.pwm_device* %13, %struct.pwm_state* %9)
  %15 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %16 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %8, align 8
  %23 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %24 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ZX_PWM_MODE, align 4
  %27 = load i32, i32* @ZX_PWM_POLAR, align 4
  %28 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %29 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @ZX_PWM_POLAR, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  %38 = call i32 @zx_pwm_set_mask(%struct.zx_pwm_chip* %22, i32 %25, i32 %26, i32 %27, i32 %37)
  br label %39

39:                                               ; preds = %36, %3
  %40 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %41 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %48 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %46, %39
  %54 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %55 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %56 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %57 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %60 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @zx_pwm_config(%struct.pwm_chip* %54, %struct.pwm_device* %55, i64 %58, i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %112

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %70 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %68
  %76 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %77 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %8, align 8
  %82 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @clk_prepare_enable(i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %112

89:                                               ; preds = %80
  %90 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %8, align 8
  %91 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %92 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ZX_PWM_MODE, align 4
  %95 = load i32, i32* @ZX_PWM_EN, align 4
  %96 = load i32, i32* @ZX_PWM_EN, align 4
  %97 = call i32 @zx_pwm_set_mask(%struct.zx_pwm_chip* %90, i32 %93, i32 %94, i32 %95, i32 %96)
  br label %110

98:                                               ; preds = %75
  %99 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %8, align 8
  %100 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %101 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ZX_PWM_MODE, align 4
  %104 = load i32, i32* @ZX_PWM_EN, align 4
  %105 = call i32 @zx_pwm_set_mask(%struct.zx_pwm_chip* %99, i32 %102, i32 %103, i32 %104, i32 0)
  %106 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %8, align 8
  %107 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @clk_disable_unprepare(i32 %108)
  br label %110

110:                                              ; preds = %98, %89
  br label %111

111:                                              ; preds = %110, %68
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %87, %65
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.zx_pwm_chip* @to_zx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @zx_pwm_set_mask(%struct.zx_pwm_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @zx_pwm_config(%struct.pwm_chip*, %struct.pwm_device*, i64, i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
