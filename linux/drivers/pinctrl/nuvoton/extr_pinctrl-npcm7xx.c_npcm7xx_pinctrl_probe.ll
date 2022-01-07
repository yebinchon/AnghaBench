; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.npcm7xx_pinctrl = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nuvoton,npcm750-gcr\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"didn't find nuvoton,npcm750-gcr\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to gpio dt-binding %u\0A\00", align 1
@npcm7xx_pinctrl_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register pinctrl device\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to register gpio %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"NPCM7xx Pinctrl driver probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @npcm7xx_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.npcm7xx_pinctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.npcm7xx_pinctrl* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.npcm7xx_pinctrl* %9, %struct.npcm7xx_pinctrl** %4, align 8
  %10 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %11 = icmp ne %struct.npcm7xx_pinctrl* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %19 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %23 = call i32 @dev_set_drvdata(i32* %21, %struct.npcm7xx_pinctrl* %22)
  %24 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %28 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %15
  %33 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %34 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %38 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %87

41:                                               ; preds = %15
  %42 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %43 = call i32 @npcm7xx_gpio_of(%struct.npcm7xx_pinctrl* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %48 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %87

53:                                               ; preds = %41
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %57 = call i32 @devm_pinctrl_register(i32* %55, i32* @npcm7xx_pinctrl_desc, %struct.npcm7xx_pinctrl* %56)
  %58 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %59 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %61 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %70 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %87

73:                                               ; preds = %53
  %74 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %75 = call i32 @npcm7xx_gpio_register(%struct.npcm7xx_pinctrl* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %4, align 8
  %80 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %87

85:                                               ; preds = %73
  %86 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %78, %65, %46, %32, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.npcm7xx_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.npcm7xx_pinctrl*) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @npcm7xx_gpio_of(%struct.npcm7xx_pinctrl*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, i32*, %struct.npcm7xx_pinctrl*) #1

declare dso_local i32 @npcm7xx_gpio_register(%struct.npcm7xx_pinctrl*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
