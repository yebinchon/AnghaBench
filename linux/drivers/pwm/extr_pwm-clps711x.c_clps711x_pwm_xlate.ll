; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i32 }
%struct.pwm_chip = type { i64 }
%struct.of_phandle_args = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pwm_device* (%struct.pwm_chip*, %struct.of_phandle_args*)* @clps711x_pwm_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pwm_device* @clps711x_pwm_xlate(%struct.pwm_chip* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.pwm_device*, align 8
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %6 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %7 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %12 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.pwm_device* @ERR_PTR(i32 %17)
  store %struct.pwm_device* %18, %struct.pwm_device** %3, align 8
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %21 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %22 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip* %20, i64 %25, i32* null)
  store %struct.pwm_device* %26, %struct.pwm_device** %3, align 8
  br label %27

27:                                               ; preds = %19, %15
  %28 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  ret %struct.pwm_device* %28
}

declare dso_local %struct.pwm_device* @ERR_PTR(i32) #1

declare dso_local %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
