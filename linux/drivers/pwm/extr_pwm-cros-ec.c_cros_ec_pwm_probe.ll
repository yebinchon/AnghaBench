; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cros_ec_device = type { i32 }
%struct.cros_ec_pwm_device = type { %struct.cros_ec_device*, %struct.pwm_chip }
%struct.pwm_chip = type { i32, i32, i32, i32, i32*, %struct.device* }

@.str = private unnamed_addr constant [21 x i8] c"no parent EC device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_pwm_ops = common dso_local global i32 0, align 4
@cros_ec_pwm_xlate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't find PWMs: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Probed %u PWMs\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot register PWM: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.cros_ec_pwm_device*, align 8
  %7 = alloca %struct.pwm_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cros_ec_device* @dev_get_drvdata(i32 %12)
  store %struct.cros_ec_device* %13, %struct.cros_ec_device** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %17 = icmp ne %struct.cros_ec_device* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %82

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.cros_ec_pwm_device* @devm_kzalloc(%struct.device* %24, i32 40, i32 %25)
  store %struct.cros_ec_pwm_device* %26, %struct.cros_ec_pwm_device** %6, align 8
  %27 = load %struct.cros_ec_pwm_device*, %struct.cros_ec_pwm_device** %6, align 8
  %28 = icmp ne %struct.cros_ec_pwm_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %82

32:                                               ; preds = %23
  %33 = load %struct.cros_ec_pwm_device*, %struct.cros_ec_pwm_device** %6, align 8
  %34 = getelementptr inbounds %struct.cros_ec_pwm_device, %struct.cros_ec_pwm_device* %33, i32 0, i32 1
  store %struct.pwm_chip* %34, %struct.pwm_chip** %7, align 8
  %35 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %36 = load %struct.cros_ec_pwm_device*, %struct.cros_ec_pwm_device** %6, align 8
  %37 = getelementptr inbounds %struct.cros_ec_pwm_device, %struct.cros_ec_pwm_device* %36, i32 0, i32 0
  store %struct.cros_ec_device* %35, %struct.cros_ec_device** %37, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %40 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %39, i32 0, i32 5
  store %struct.device* %38, %struct.device** %40, align 8
  %41 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %42 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %41, i32 0, i32 4
  store i32* @cros_ec_pwm_ops, i32** %42, align 8
  %43 = load i32, i32* @cros_ec_pwm_xlate, align 4
  %44 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %45 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %47 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %49 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 4
  %50 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %51 = call i32 @cros_ec_num_pwms(%struct.cros_ec_device* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %32
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %82

59:                                               ; preds = %32
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %62 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %65 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.pwm_chip*, %struct.pwm_chip** %7, align 8
  %69 = call i32 @pwmchip_add(%struct.pwm_chip* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %82

77:                                               ; preds = %59
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = load %struct.cros_ec_pwm_device*, %struct.cros_ec_pwm_device** %6, align 8
  %80 = call i32 @platform_set_drvdata(%struct.platform_device* %78, %struct.cros_ec_pwm_device* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %72, %54, %29, %18
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.cros_ec_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.cros_ec_pwm_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @cros_ec_num_pwms(%struct.cros_ec_device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @pwmchip_add(%struct.pwm_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cros_ec_pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
