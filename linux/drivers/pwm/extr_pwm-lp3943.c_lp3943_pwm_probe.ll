; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lp3943 = type { i32 }
%struct.lp3943_pwm = type { %struct.TYPE_4__, %struct.lp3943*, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.TYPE_5__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lp3943_pwm_ops = common dso_local global i32 0, align 4
@LP3943_NUM_PWMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp3943_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp3943*, align 8
  %5 = alloca %struct.lp3943_pwm*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.lp3943* @dev_get_drvdata(i32 %10)
  store %struct.lp3943* %11, %struct.lp3943** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lp3943_pwm* @devm_kzalloc(%struct.TYPE_5__* %13, i32 40, i32 %14)
  store %struct.lp3943_pwm* %15, %struct.lp3943_pwm** %5, align 8
  %16 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %17 = icmp ne %struct.lp3943_pwm* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.lp3943*, %struct.lp3943** %4, align 8
  %23 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %26 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %28 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @CONFIG_OF, align 4
  %33 = call i64 @IS_ENABLED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %39 = call i32 @lp3943_pwm_parse_dt(%struct.TYPE_5__* %37, %struct.lp3943_pwm* %38)
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %71

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.lp3943*, %struct.lp3943** %4, align 8
  %51 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %52 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %51, i32 0, i32 1
  store %struct.lp3943* %50, %struct.lp3943** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %56 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %57, align 8
  %58 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %59 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32* @lp3943_pwm_ops, i32** %60, align 8
  %61 = load i32, i32* @LP3943_NUM_PWMS, align 4
  %62 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %63 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %65, %struct.lp3943_pwm* %66)
  %68 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %69 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %68, i32 0, i32 0
  %70 = call i32 @pwmchip_add(%struct.TYPE_4__* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %49, %46, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.lp3943* @dev_get_drvdata(i32) #1

declare dso_local %struct.lp3943_pwm* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @lp3943_pwm_parse_dt(%struct.TYPE_5__*, %struct.lp3943_pwm*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp3943_pwm*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
