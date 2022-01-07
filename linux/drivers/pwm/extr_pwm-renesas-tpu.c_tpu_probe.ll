; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.tpu_device = type { %struct.platform_device*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@tpu_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@TPU_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to register PWM chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TPU PWM %d registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tpu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tpu_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tpu_device* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.tpu_device* %10, %struct.tpu_device** %4, align 8
  %11 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %12 = icmp eq %struct.tpu_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %18 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %17, i32 0, i32 4
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %21, i32 0, i32 0
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %5, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = call i32 @devm_ioremap_resource(i32* %27, %struct.resource* %28)
  %30 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %31 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %33 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %16
  %38 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %39 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %109

42:                                               ; preds = %16
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @devm_clk_get(i32* %44, i32* null)
  %46 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %47 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %49 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %58 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %109

61:                                               ; preds = %42
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %64 = call i32 @platform_set_drvdata(%struct.platform_device* %62, %struct.tpu_device* %63)
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %68 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 5
  store i32* %66, i32** %69, align 8
  %70 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %71 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i32* @tpu_pwm_ops, i32** %72, align 8
  %73 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %74 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %75 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %78 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 3, i32* %79, align 8
  %80 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %81 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 4
  %83 = load i32, i32* @TPU_CHANNEL_MAX, align 4
  %84 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %85 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %88 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %87, i32 0, i32 1
  %89 = call i32 @pwmchip_add(%struct.TYPE_2__* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %61
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %109

97:                                               ; preds = %61
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.tpu_device*, %struct.tpu_device** %4, align 8
  %101 = getelementptr inbounds %struct.tpu_device, %struct.tpu_device* %100, i32 0, i32 0
  %102 = load %struct.platform_device*, %struct.platform_device** %101, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_info(i32* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @pm_runtime_enable(i32* %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %97, %92, %53, %37, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.tpu_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tpu_device*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
