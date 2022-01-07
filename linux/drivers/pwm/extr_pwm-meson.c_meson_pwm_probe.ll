; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.meson_pwm = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@meson_pwm_ops = common dso_local global i32 0, align 4
@MESON_NUM_PWMS = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register PWM chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.meson_pwm*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.meson_pwm* @devm_kzalloc(i32* %8, i32 48, i32 %9)
  store %struct.meson_pwm* %10, %struct.meson_pwm** %4, align 8
  %11 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %12 = icmp ne %struct.meson_pwm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %25 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %27 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %33 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %89

36:                                               ; preds = %16
  %37 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %38 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %37, i32 0, i32 2
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %43 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  store i32* %41, i32** %44, align 8
  %45 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %46 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i32* @meson_pwm_ops, i32** %47, align 8
  %48 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %49 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  %51 = load i32, i32* @MESON_NUM_PWMS, align 4
  %52 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %53 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %56 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %57 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %60 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 3, i32* %61, align 4
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @of_device_get_match_data(i32* %63)
  %65 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %66 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %68 = call i32 @meson_pwm_init_channels(%struct.meson_pwm* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %36
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %89

73:                                               ; preds = %36
  %74 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %75 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %74, i32 0, i32 0
  %76 = call i32 @pwmchip_add(%struct.TYPE_2__* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %89

85:                                               ; preds = %73
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load %struct.meson_pwm*, %struct.meson_pwm** %4, align 8
  %88 = call i32 @platform_set_drvdata(%struct.platform_device* %86, %struct.meson_pwm* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %79, %71, %31, %13
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.meson_pwm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_device_get_match_data(i32*) #1

declare dso_local i32 @meson_pwm_init_channels(%struct.meson_pwm*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_pwm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
