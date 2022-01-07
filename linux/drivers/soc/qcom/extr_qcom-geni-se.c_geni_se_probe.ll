; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.geni_wrapper = type { %struct.TYPE_2__*, i32, %struct.device* }
%struct.TYPE_2__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"m-ahb\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"s-ahb\00", align 1
@NUM_AHB_CLKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Err getting AHB clks %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GENI SE Driver probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @geni_se_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geni_se_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.geni_wrapper*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.geni_wrapper* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.geni_wrapper* %12, %struct.geni_wrapper** %6, align 8
  %13 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %14 = icmp ne %struct.geni_wrapper* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %21 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %20, i32 0, i32 2
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %5, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = call i32 @devm_ioremap_resource(%struct.device* %25, %struct.resource* %26)
  %28 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %29 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %31 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %37 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %78

40:                                               ; preds = %18
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @has_acpi_companion(%struct.device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %40
  %46 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %47 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %52 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* @NUM_AHB_CLKS, align 4
  %58 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %59 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = call i32 @devm_clk_bulk_get(%struct.device* %56, i32 %57, %struct.TYPE_2__* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %78

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.geni_wrapper*, %struct.geni_wrapper** %6, align 8
  %73 = call i32 @dev_set_drvdata(%struct.device* %71, %struct.geni_wrapper* %72)
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @devm_of_platform_populate(%struct.device* %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %70, %64, %35, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.geni_wrapper* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @has_acpi_companion(%struct.device*) #1

declare dso_local i32 @devm_clk_bulk_get(%struct.device*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.geni_wrapper*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
