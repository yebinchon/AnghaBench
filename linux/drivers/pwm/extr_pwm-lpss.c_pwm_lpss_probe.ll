; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_lpss_chip = type { %struct.TYPE_2__, %struct.pwm_lpss_boardinfo*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32*, %struct.device* }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.pwm_lpss_boardinfo = type { i64, i64 }

@MAX_PWMS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pwm_lpss_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pwm_lpss_chip* @pwm_lpss_probe(%struct.device* %0, %struct.resource* %1, %struct.pwm_lpss_boardinfo* %2) #0 {
  %4 = alloca %struct.pwm_lpss_chip*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.pwm_lpss_boardinfo*, align 8
  %8 = alloca %struct.pwm_lpss_chip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store %struct.pwm_lpss_boardinfo* %2, %struct.pwm_lpss_boardinfo** %7, align 8
  %11 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %7, align 8
  %12 = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_PWMS, align 8
  %15 = icmp sgt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.pwm_lpss_chip* @ERR_PTR(i32 %21)
  store %struct.pwm_lpss_chip* %22, %struct.pwm_lpss_chip** %4, align 8
  br label %94

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.pwm_lpss_chip* @devm_kzalloc(%struct.device* %24, i32 48, i32 %25)
  store %struct.pwm_lpss_chip* %26, %struct.pwm_lpss_chip** %8, align 8
  %27 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %28 = icmp ne %struct.pwm_lpss_chip* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.pwm_lpss_chip* @ERR_PTR(i32 %31)
  store %struct.pwm_lpss_chip* %32, %struct.pwm_lpss_chip** %4, align 8
  br label %94

33:                                               ; preds = %23
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %38 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %40 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %46 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.pwm_lpss_chip* @ERR_CAST(i32 %47)
  store %struct.pwm_lpss_chip* %48, %struct.pwm_lpss_chip** %4, align 8
  br label %94

49:                                               ; preds = %33
  %50 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %7, align 8
  %51 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %52 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %51, i32 0, i32 1
  store %struct.pwm_lpss_boardinfo* %50, %struct.pwm_lpss_boardinfo** %52, align 8
  %53 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %54 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %53, i32 0, i32 1
  %55 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %54, align 8
  %56 = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.pwm_lpss_chip* @ERR_PTR(i32 %62)
  store %struct.pwm_lpss_chip* %63, %struct.pwm_lpss_chip** %4, align 8
  br label %94

64:                                               ; preds = %49
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %67 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store %struct.device* %65, %struct.device** %68, align 8
  %69 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %70 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32* @pwm_lpss_ops, i32** %71, align 8
  %72 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %73 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %7, align 8
  %76 = getelementptr inbounds %struct.pwm_lpss_boardinfo, %struct.pwm_lpss_boardinfo* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %79 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  %82 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %81, i32 0, i32 0
  %83 = call i32 @pwmchip_add(%struct.TYPE_2__* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %64
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = call %struct.pwm_lpss_chip* @ERR_PTR(i32 %90)
  store %struct.pwm_lpss_chip* %91, %struct.pwm_lpss_chip** %4, align 8
  br label %94

92:                                               ; preds = %64
  %93 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %8, align 8
  store %struct.pwm_lpss_chip* %93, %struct.pwm_lpss_chip** %4, align 8
  br label %94

94:                                               ; preds = %92, %86, %60, %44, %29, %19
  %95 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %4, align 8
  ret %struct.pwm_lpss_chip* %95
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.pwm_lpss_chip* @ERR_PTR(i32) #1

declare dso_local %struct.pwm_lpss_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.pwm_lpss_chip* @ERR_CAST(i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
