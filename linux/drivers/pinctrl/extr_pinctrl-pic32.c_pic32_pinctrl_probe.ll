; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }
%struct.platform_device = type { i32 }
%struct.pic32_pinctrl = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clk get failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clk enable failed\0A\00", align 1
@pic32_pins = common dso_local global i8* null, align 8
@pic32_functions = common dso_local global i8* null, align 8
@pic32_groups = common dso_local global i8* null, align 8
@pic32_gpio_banks = common dso_local global i8* null, align 8
@pic32_pinctrl_desc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@pic32_mpp_bindings = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to register pinctrl device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pic32_pinctrl*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pic32_pinctrl* @devm_kzalloc(i32* %8, i32 88, i32 %9)
  store %struct.pic32_pinctrl* %10, %struct.pic32_pinctrl** %4, align 8
  %11 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %12 = icmp ne %struct.pic32_pinctrl* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %134

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %20 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %19, i32 0, i32 11
  store i32* %18, i32** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %24 = call i32 @dev_set_drvdata(i32* %22, %struct.pic32_pinctrl* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %5, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i32 @devm_ioremap_resource(i32* %29, %struct.resource* %30)
  %32 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %33 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %35 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %16
  %40 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %41 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %134

44:                                               ; preds = %16
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @devm_clk_get(i32* %46, i32* null)
  %48 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %49 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %51 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %57 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %134

64:                                               ; preds = %44
  %65 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %66 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @clk_prepare_enable(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %134

76:                                               ; preds = %64
  %77 = load i8*, i8** @pic32_pins, align 8
  %78 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %79 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @pic32_pins, align 8
  %81 = call i8* @ARRAY_SIZE(i8* %80)
  %82 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %83 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @pic32_functions, align 8
  %85 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %86 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %85, i32 0, i32 8
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @pic32_functions, align 8
  %88 = call i8* @ARRAY_SIZE(i8* %87)
  %89 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %90 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @pic32_groups, align 8
  %92 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %93 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @pic32_groups, align 8
  %95 = call i8* @ARRAY_SIZE(i8* %94)
  %96 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %97 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @pic32_gpio_banks, align 8
  %99 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %100 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @pic32_gpio_banks, align 8
  %102 = call i8* @ARRAY_SIZE(i8* %101)
  %103 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %104 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %106 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pic32_pinctrl_desc, i32 0, i32 3), align 8
  %108 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %109 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pic32_pinctrl_desc, i32 0, i32 2), align 8
  %111 = load i8*, i8** @pic32_mpp_bindings, align 8
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pic32_pinctrl_desc, i32 0, i32 1), align 8
  %112 = load i8*, i8** @pic32_mpp_bindings, align 8
  %113 = call i8* @ARRAY_SIZE(i8* %112)
  store i8* %113, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pic32_pinctrl_desc, i32 0, i32 0), align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %117 = call i32 @devm_pinctrl_register(i32* %115, %struct.TYPE_3__* @pic32_pinctrl_desc, %struct.pic32_pinctrl* %116)
  %118 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %119 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %121 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @IS_ERR(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %76
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %129 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %4, align 8
  %130 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @PTR_ERR(i32 %131)
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %125, %71, %55, %39, %13
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.pic32_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.pic32_pinctrl*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.TYPE_3__*, %struct.pic32_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
