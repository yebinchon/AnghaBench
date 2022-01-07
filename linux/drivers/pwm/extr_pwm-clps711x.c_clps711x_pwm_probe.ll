; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-clps711x.c_clps711x_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.clps711x_chip = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@clps711x_pwm_ops = common dso_local global i32 0, align 4
@clps711x_pwm_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clps711x_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clps711x_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.clps711x_chip* @devm_kzalloc(i32* %7, i32 48, i32 %8)
  store %struct.clps711x_chip* %9, %struct.clps711x_chip** %4, align 8
  %10 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %11 = icmp ne %struct.clps711x_chip* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = call i32 @devm_ioremap_resource(i32* %20, %struct.resource* %21)
  %23 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %24 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %26 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %32 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %15
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @devm_clk_get(i32* %37, i32* null)
  %39 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %40 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %42 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %48 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %82

51:                                               ; preds = %35
  %52 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %53 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32* @clps711x_pwm_ops, i32** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %58 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32* %56, i32** %59, align 8
  %60 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %61 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %64 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 2, i32* %65, align 4
  %66 = load i32, i32* @clps711x_pwm_xlate, align 4
  %67 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %68 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %71 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %74 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %73, i32 0, i32 1
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %78 = call i32 @platform_set_drvdata(%struct.platform_device* %76, %struct.clps711x_chip* %77)
  %79 = load %struct.clps711x_chip*, %struct.clps711x_chip** %4, align 8
  %80 = getelementptr inbounds %struct.clps711x_chip, %struct.clps711x_chip* %79, i32 0, i32 0
  %81 = call i32 @pwmchip_add(%struct.TYPE_2__* %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %51, %46, %30, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.clps711x_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.clps711x_chip*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
