; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.clps711x_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @clps711x_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.clps711x_chip*, align 8
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %13 = call %struct.clps711x_chip* @to_clps711x_chip(%struct.pwm_chip* %12)
  store %struct.clps711x_chip* %13, %struct.clps711x_chip** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %16 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %4
  %24 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @clps711x_get_duty(%struct.pwm_device* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.clps711x_chip*, %struct.clps711x_chip** %10, align 8
  %28 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %29 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @clps711x_pwm_update_val(%struct.clps711x_chip* %27, i32 %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.clps711x_chip* @to_clps711x_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clps711x_get_duty(%struct.pwm_device*, i32) #1

declare dso_local i32 @clps711x_pwm_update_val(%struct.clps711x_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
