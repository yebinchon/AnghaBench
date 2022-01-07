; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx1.c_pwm_imx1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx1.c_pwm_imx1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pwm_imx1_chip = type { %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"getting ipg clock failed with %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to get peripheral clock: %d\0A\00", align 1
@pwm_imx1_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_imx1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_imx1_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pwm_imx1_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pwm_imx1_chip* @devm_kzalloc(i32* %8, i32 48, i32 %9)
  store %struct.pwm_imx1_chip* %10, %struct.pwm_imx1_chip** %4, align 8
  %11 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %12 = icmp ne %struct.pwm_imx1_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.pwm_imx1_chip* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i8* @devm_clk_get(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %24 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %26 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %16
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %34 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  %37 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %39 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %107

42:                                               ; preds = %16
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i8* @devm_clk_get(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %47 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %49 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %42
  %54 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %55 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @EPROBE_DEFER, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %53
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %107

69:                                               ; preds = %42
  %70 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %71 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i32* @pwm_imx1_ops, i32** %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %76 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32* %74, i32** %77, align 8
  %78 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %79 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 8
  %81 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %82 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load i32, i32* @IORESOURCE_MEM, align 4
  %86 = call %struct.resource* @platform_get_resource(%struct.platform_device* %84, i32 %85, i32 0)
  store %struct.resource* %86, %struct.resource** %5, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load %struct.resource*, %struct.resource** %5, align 8
  %90 = call i8* @devm_ioremap_resource(i32* %88, %struct.resource* %89)
  %91 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %92 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %94 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %69
  %99 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %100 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %69
  %104 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %4, align 8
  %105 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %104, i32 0, i32 0
  %106 = call i32 @pwmchip_add(%struct.TYPE_2__* %105)
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %98, %67, %30, %13
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.pwm_imx1_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwm_imx1_chip*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
