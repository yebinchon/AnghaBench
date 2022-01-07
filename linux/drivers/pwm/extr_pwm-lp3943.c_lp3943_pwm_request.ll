; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.lp3943_pwm = type { i32 }
%struct.lp3943_pwm_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @lp3943_pwm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_pwm_request(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.lp3943_pwm*, align 8
  %7 = alloca %struct.lp3943_pwm_map*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.lp3943_pwm* @to_lp3943_pwm(%struct.pwm_chip* %8)
  store %struct.lp3943_pwm* %9, %struct.lp3943_pwm** %6, align 8
  %10 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %6, align 8
  %11 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %12 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.lp3943_pwm_map* @lp3943_pwm_request_map(%struct.lp3943_pwm* %10, i32 %13)
  store %struct.lp3943_pwm_map* %14, %struct.lp3943_pwm_map** %7, align 8
  %15 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %7, align 8
  %16 = call i64 @IS_ERR(%struct.lp3943_pwm_map* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.lp3943_pwm_map* %19)
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %23 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %7, align 8
  %24 = call i32 @pwm_set_chip_data(%struct.pwm_device* %22, %struct.lp3943_pwm_map* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.lp3943_pwm* @to_lp3943_pwm(%struct.pwm_chip*) #1

declare dso_local %struct.lp3943_pwm_map* @lp3943_pwm_request_map(%struct.lp3943_pwm*, i32) #1

declare dso_local i64 @IS_ERR(%struct.lp3943_pwm_map*) #1

declare dso_local i32 @PTR_ERR(%struct.lp3943_pwm_map*) #1

declare dso_local i32 @pwm_set_chip_data(%struct.pwm_device*, %struct.lp3943_pwm_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
