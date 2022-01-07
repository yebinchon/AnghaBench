; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sun4i.c_sun4i_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sun4i.c_sun4i_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sun4i_pwm_chip = type { %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sun4i_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sun4i_pwm_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sun4i_pwm_chip* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.sun4i_pwm_chip* %10, %struct.sun4i_pwm_chip** %4, align 8
  %11 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %12 = icmp ne %struct.sun4i_pwm_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.TYPE_4__* @of_device_get_match_data(i32* %18)
  %20 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %21 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %20, i32 0, i32 2
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %21, align 8
  %22 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %23 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %110

29:                                               ; preds = %16
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %5, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = call i32 @devm_ioremap_resource(i32* %34, %struct.resource* %35)
  %37 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %38 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %40 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %46 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %110

49:                                               ; preds = %29
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @devm_clk_get(i32* %51, i32* null)
  %53 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %54 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %56 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %62 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %110

65:                                               ; preds = %49
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %69 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  store i32* %67, i32** %70, align 8
  %71 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %72 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  store i32* @sun4i_pwm_ops, i32** %73, align 8
  %74 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %75 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  %77 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %78 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %83 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %86 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %87 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %90 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 3, i32* %91, align 4
  %92 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %93 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %92, i32 0, i32 1
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %96 = getelementptr inbounds %struct.sun4i_pwm_chip, %struct.sun4i_pwm_chip* %95, i32 0, i32 0
  %97 = call i32 @pwmchip_add(%struct.TYPE_3__* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %65
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %110

106:                                              ; preds = %65
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.sun4i_pwm_chip*, %struct.sun4i_pwm_chip** %4, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.sun4i_pwm_chip* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %100, %60, %44, %26, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.sun4i_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sun4i_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
