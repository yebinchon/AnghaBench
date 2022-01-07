; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-artpec6.c_artpec6_pmx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-artpec6.c_artpec6_pmx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.artpec6_pmx = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@artpec6_pins = common dso_local global i8* null, align 8
@artpec6_pmx_functions = common dso_local global i8* null, align 8
@artpec6_pin_groups = common dso_local global i8* null, align 8
@artpec6_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not register pinctrl driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"initialised Axis ARTPEC-6 pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @artpec6_pmx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_pmx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.artpec6_pmx*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.artpec6_pmx* @devm_kzalloc(i32* %7, i32 72, i32 %8)
  store %struct.artpec6_pmx* %9, %struct.artpec6_pmx** %4, align 8
  %10 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %11 = icmp ne %struct.artpec6_pmx* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %89

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %19 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %18, i32 0, i32 8
  store i32* %17, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i32 @devm_ioremap_resource(i32* %24, %struct.resource* %25)
  %27 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %28 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %30 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %15
  %35 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %36 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %89

39:                                               ; preds = %15
  %40 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %41 = call i32 @artpec6_pmx_reset(%struct.artpec6_pmx* %40)
  %42 = load i8*, i8** @artpec6_pins, align 8
  %43 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %44 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @artpec6_pins, align 8
  %46 = call i8* @ARRAY_SIZE(i8* %45)
  %47 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %48 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @artpec6_pmx_functions, align 8
  %50 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %51 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @artpec6_pmx_functions, align 8
  %53 = call i8* @ARRAY_SIZE(i8* %52)
  %54 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %55 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @artpec6_pin_groups, align 8
  %57 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %58 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @artpec6_pin_groups, align 8
  %60 = call i8* @ARRAY_SIZE(i8* %59)
  %61 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %62 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %66 = call i32 @pinctrl_register(i32* @artpec6_desc, i32* %64, %struct.artpec6_pmx* %65)
  %67 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %68 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %70 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %39
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %79 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %89

82:                                               ; preds = %39
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %4, align 8
  %85 = call i32 @platform_set_drvdata(%struct.platform_device* %83, %struct.artpec6_pmx* %84)
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_info(i32* %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %82, %74, %34, %12
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.artpec6_pmx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @artpec6_pmx_reset(%struct.artpec6_pmx*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @pinctrl_register(i32*, i32*, %struct.artpec6_pmx*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.artpec6_pmx*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
