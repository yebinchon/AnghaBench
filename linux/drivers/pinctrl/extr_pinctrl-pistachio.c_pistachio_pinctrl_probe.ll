; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.platform_device = type { i32 }
%struct.pistachio_pinctrl = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@pistachio_pins = common dso_local global i8* null, align 8
@pistachio_functions = common dso_local global i8* null, align 8
@pistachio_groups = common dso_local global i8* null, align 8
@pistachio_gpio_banks = common dso_local global i8* null, align 8
@pistachio_pinctrl_desc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to register pinctrl device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pistachio_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pistachio_pinctrl*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pistachio_pinctrl* @devm_kzalloc(i32* %7, i32 88, i32 %8)
  store %struct.pistachio_pinctrl* %9, %struct.pistachio_pinctrl** %4, align 8
  %10 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %11 = icmp ne %struct.pistachio_pinctrl* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %19 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %18, i32 0, i32 10
  store i32* %17, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %23 = call i32 @dev_set_drvdata(i32* %21, %struct.pistachio_pinctrl* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %5, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = call i32 @devm_ioremap_resource(i32* %28, %struct.resource* %29)
  %31 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %32 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %34 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %15
  %39 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %40 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %100

43:                                               ; preds = %15
  %44 = load i8*, i8** @pistachio_pins, align 8
  %45 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %46 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @pistachio_pins, align 8
  %48 = call i8* @ARRAY_SIZE(i8* %47)
  %49 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %50 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @pistachio_functions, align 8
  %52 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %53 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @pistachio_functions, align 8
  %55 = call i8* @ARRAY_SIZE(i8* %54)
  %56 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %57 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @pistachio_groups, align 8
  %59 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %60 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @pistachio_groups, align 8
  %62 = call i8* @ARRAY_SIZE(i8* %61)
  %63 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %64 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @pistachio_gpio_banks, align 8
  %66 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %67 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @pistachio_gpio_banks, align 8
  %69 = call i8* @ARRAY_SIZE(i8* %68)
  %70 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %71 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %73 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pistachio_pinctrl_desc, i32 0, i32 1), align 8
  %75 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %76 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pistachio_pinctrl_desc, i32 0, i32 0), align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %81 = call i32 @devm_pinctrl_register(i32* %79, %struct.TYPE_3__* @pistachio_pinctrl_desc, %struct.pistachio_pinctrl* %80)
  %82 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %83 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %85 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %43
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %94 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %100

97:                                               ; preds = %43
  %98 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %4, align 8
  %99 = call i32 @pistachio_gpio_register(%struct.pistachio_pinctrl* %98)
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %97, %89, %38, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.pistachio_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.pistachio_pinctrl*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.TYPE_3__*, %struct.pistachio_pinctrl*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pistachio_gpio_register(%struct.pistachio_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
