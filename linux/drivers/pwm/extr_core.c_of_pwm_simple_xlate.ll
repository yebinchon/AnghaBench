; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_of_pwm_simple_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_of_pwm_simple_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pwm_chip = type { i32, i64 }
%struct.of_phandle_args = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pwm_device* (%struct.pwm_chip*, %struct.of_phandle_args*)* @of_pwm_simple_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pwm_device* @of_pwm_simple_xlate(%struct.pwm_chip* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.pwm_device*, align 8
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %8 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.pwm_device* @ERR_PTR(i32 %13)
  store %struct.pwm_device* %14, %struct.pwm_device** %3, align 8
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %20 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.pwm_device* @ERR_PTR(i32 %25)
  store %struct.pwm_device* %26, %struct.pwm_device** %3, align 8
  br label %64

27:                                               ; preds = %15
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %34 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.pwm_device* @ERR_PTR(i32 %39)
  store %struct.pwm_device* %40, %struct.pwm_device** %3, align 8
  br label %64

41:                                               ; preds = %27
  %42 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %43 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %44 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip* %42, i64 %47, i32* null)
  store %struct.pwm_device* %48, %struct.pwm_device** %6, align 8
  %49 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %50 = call i64 @IS_ERR(%struct.pwm_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %53, %struct.pwm_device** %3, align 8
  br label %64

54:                                               ; preds = %41
  %55 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %56 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %61 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %63, %struct.pwm_device** %3, align 8
  br label %64

64:                                               ; preds = %54, %52, %37, %23, %11
  %65 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  ret %struct.pwm_device* %65
}

declare dso_local %struct.pwm_device* @ERR_PTR(i32) #1

declare dso_local %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
