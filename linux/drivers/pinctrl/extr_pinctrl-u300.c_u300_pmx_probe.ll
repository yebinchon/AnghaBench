; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-u300.c_u300_pmx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-u300.c_u300_pmx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.u300_pmx = type { i32, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@u300_pmx_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not register U300 pinmux driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"initialized U300 pin control driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @u300_pmx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u300_pmx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.u300_pmx*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.u300_pmx* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.u300_pmx* %9, %struct.u300_pmx** %4, align 8
  %10 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %11 = icmp ne %struct.u300_pmx* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %19 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i32 @devm_ioremap_resource(i32* %24, %struct.resource* %25)
  %27 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %28 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %30 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %15
  %35 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %36 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %66

39:                                               ; preds = %15
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %43 = call i32 @devm_pinctrl_register(i32* %41, i32* @u300_pmx_desc, %struct.u300_pmx* %42)
  %44 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %45 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %47 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %56 = getelementptr inbounds %struct.u300_pmx, %struct.u300_pmx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %66

59:                                               ; preds = %39
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.u300_pmx*, %struct.u300_pmx** %4, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.u300_pmx* %61)
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_info(i32* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %59, %51, %34, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.u300_pmx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_pinctrl_register(i32*, i32*, %struct.u300_pmx*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.u300_pmx*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
