; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwm_class_resume_npwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwm_class_resume_npwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pwm_chip = type { %struct.pwm_device* }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32 }
%struct.pwm_export = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pwm_class_resume_npwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_class_resume_npwm(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pwm_device*, align 8
  %9 = alloca %struct.pwm_state, align 4
  %10 = alloca %struct.pwm_export*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.pwm_chip* @dev_get_drvdata(%struct.device* %11)
  store %struct.pwm_chip* %12, %struct.pwm_chip** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %43, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %19 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %18, i32 0, i32 0
  %20 = load %struct.pwm_device*, %struct.pwm_device** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %20, i64 %22
  store %struct.pwm_device* %23, %struct.pwm_device** %8, align 8
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %26 = call %struct.pwm_export* @pwm_class_get_state(%struct.device* %24, %struct.pwm_device* %25, %struct.pwm_state* %9)
  store %struct.pwm_export* %26, %struct.pwm_export** %10, align 8
  %27 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %28 = icmp ne %struct.pwm_export* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %43

30:                                               ; preds = %17
  %31 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %32 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %37 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %38 = call i32 @pwm_class_apply_state(%struct.pwm_export* %36, %struct.pwm_device* %37, %struct.pwm_state* %9)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %13

46:                                               ; preds = %41, %13
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.pwm_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.pwm_export* @pwm_class_get_state(%struct.device*, %struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @pwm_class_apply_state(%struct.pwm_export*, %struct.pwm_device*, %struct.pwm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
