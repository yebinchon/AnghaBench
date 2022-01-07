; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_of_pwm_xlate_with_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_of_pwm_xlate_with_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pwm_chip = type { i32, i32 }
%struct.of_phandle_args = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERTED = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pwm_device* @of_pwm_xlate_with_flags(%struct.pwm_chip* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.pwm_device*, align 8
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %8 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.pwm_device* @ERR_PTR(i32 %13)
  store %struct.pwm_device* %14, %struct.pwm_device** %3, align 8
  br label %84

15:                                               ; preds = %2
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.pwm_device* @ERR_PTR(i32 %22)
  store %struct.pwm_device* %23, %struct.pwm_device** %3, align 8
  br label %84

24:                                               ; preds = %15
  %25 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %26 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %31 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.pwm_device* @ERR_PTR(i32 %36)
  store %struct.pwm_device* %37, %struct.pwm_device** %3, align 8
  br label %84

38:                                               ; preds = %24
  %39 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %40 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %41 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip* %39, i32 %44, i32* null)
  store %struct.pwm_device* %45, %struct.pwm_device** %6, align 8
  %46 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %47 = call i64 @IS_ERR(%struct.pwm_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %50, %struct.pwm_device** %3, align 8
  br label %84

51:                                               ; preds = %38
  %52 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %53 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %58 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %61 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %62 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %65 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %82

68:                                               ; preds = %51
  %69 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %70 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PWM_POLARITY_INVERTED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %79 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %80 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %68, %51
  %83 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %83, %struct.pwm_device** %3, align 8
  br label %84

84:                                               ; preds = %82, %49, %34, %20, %11
  %85 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  ret %struct.pwm_device* %85
}

declare dso_local %struct.pwm_device* @ERR_PTR(i32) #1

declare dso_local %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
