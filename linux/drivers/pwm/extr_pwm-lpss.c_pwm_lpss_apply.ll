; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i64 }
%struct.pwm_lpss_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_lpss_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_lpss_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.pwm_lpss_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %11 = call %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip* %10)
  store %struct.pwm_lpss_chip* %11, %struct.pwm_lpss_chip** %8, align 8
  %12 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %13 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %94

16:                                               ; preds = %3
  %17 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %18 = call i64 @pwm_is_enabled(%struct.pwm_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %74, label %20

20:                                               ; preds = %16
  %21 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %22 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  %25 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %26 = call i32 @pwm_lpss_is_updating(%struct.pwm_device* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %31 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_put(i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %112

35:                                               ; preds = %20
  %36 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %37 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %38 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %39 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %42 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pwm_lpss_prepare(%struct.pwm_lpss_chip* %36, %struct.pwm_device* %37, i32 %40, i32 %43)
  %45 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %46 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %47 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @pwm_lpss_cond_enable(%struct.pwm_device* %45, i32 %52)
  %54 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %55 = call i32 @pwm_lpss_wait_for_update(%struct.pwm_device* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %35
  %59 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %60 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pm_runtime_put(i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %112

64:                                               ; preds = %35
  %65 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %66 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %67 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = call i32 @pwm_lpss_cond_enable(%struct.pwm_device* %65, i32 %72)
  br label %93

74:                                               ; preds = %16
  %75 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %76 = call i32 @pwm_lpss_is_updating(%struct.pwm_device* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %112

81:                                               ; preds = %74
  %82 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %83 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %84 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %85 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %88 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pwm_lpss_prepare(%struct.pwm_lpss_chip* %82, %struct.pwm_device* %83, i32 %86, i32 %89)
  %91 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %92 = call i32 @pwm_lpss_wait_for_update(%struct.pwm_device* %91)
  store i32 %92, i32* %4, align 4
  br label %112

93:                                               ; preds = %64
  br label %111

94:                                               ; preds = %3
  %95 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %96 = call i64 @pwm_is_enabled(%struct.pwm_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %100 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %101 = call i32 @pwm_lpss_read(%struct.pwm_device* %100)
  %102 = load i32, i32* @PWM_ENABLE, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = call i32 @pwm_lpss_write(%struct.pwm_device* %99, i32 %104)
  %106 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %107 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pm_runtime_put(i32 %108)
  br label %110

110:                                              ; preds = %98, %94
  br label %111

111:                                              ; preds = %110, %93
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %81, %79, %58, %29
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip*) #1

declare dso_local i64 @pwm_is_enabled(%struct.pwm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pwm_lpss_is_updating(%struct.pwm_device*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @pwm_lpss_prepare(%struct.pwm_lpss_chip*, %struct.pwm_device*, i32, i32) #1

declare dso_local i32 @pwm_lpss_cond_enable(%struct.pwm_device*, i32) #1

declare dso_local i32 @pwm_lpss_wait_for_update(%struct.pwm_device*) #1

declare dso_local i32 @pwm_lpss_write(%struct.pwm_device*, i32) #1

declare dso_local i32 @pwm_lpss_read(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
