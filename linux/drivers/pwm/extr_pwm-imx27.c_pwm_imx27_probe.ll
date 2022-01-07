; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pwm_imx27_chip = type { %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"getting ipg clock failed with %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to get peripheral clock: %d\0A\00", align 1
@pwm_imx27_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_imx27_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_imx27_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pwm_imx27_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pwm_imx27_chip* @devm_kzalloc(i32* %7, i32 56, i32 %8)
  store %struct.pwm_imx27_chip* %9, %struct.pwm_imx27_chip** %4, align 8
  %10 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %11 = icmp eq %struct.pwm_imx27_chip* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %108

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.pwm_imx27_chip* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i8* @devm_clk_get(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %23 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %25 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @IS_ERR(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %15
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %33 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  %36 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %38 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %2, align 4
  br label %108

41:                                               ; preds = %15
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i8* @devm_clk_get(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %46 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %48 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %41
  %53 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %54 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @EPROBE_DEFER, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %108

68:                                               ; preds = %41
  %69 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %70 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  store i32* @pwm_imx27_ops, i32** %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %75 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i32* %73, i32** %76, align 8
  %77 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %78 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  %80 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %81 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %84 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %85 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %88 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32 3, i32* %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %90, i32 0)
  %92 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %93 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %95 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %68
  %100 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %101 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @PTR_ERR(i8* %102)
  store i32 %103, i32* %2, align 4
  br label %108

104:                                              ; preds = %68
  %105 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %106 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %105, i32 0, i32 0
  %107 = call i32 @pwmchip_add(%struct.TYPE_2__* %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %99, %66, %29, %12
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.pwm_imx27_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwm_imx27_chip*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
