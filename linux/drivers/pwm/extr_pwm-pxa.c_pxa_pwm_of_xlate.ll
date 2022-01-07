; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pxa.c_pxa_pwm_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pxa.c_pxa_pwm_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pwm_chip = type { i32 }
%struct.of_phandle_args = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pwm_device* (%struct.pwm_chip*, %struct.of_phandle_args*)* @pxa_pwm_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pwm_device* @pxa_pwm_of_xlate(%struct.pwm_chip* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.pwm_device*, align 8
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %8 = call %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip* %7, i32 0, i32* null)
  store %struct.pwm_device* %8, %struct.pwm_device** %6, align 8
  %9 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %10 = call i64 @IS_ERR(%struct.pwm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %13, %struct.pwm_device** %3, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %16 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %21 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %23, %struct.pwm_device** %3, align 8
  br label %24

24:                                               ; preds = %14, %12
  %25 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  ret %struct.pwm_device* %25
}

declare dso_local %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
