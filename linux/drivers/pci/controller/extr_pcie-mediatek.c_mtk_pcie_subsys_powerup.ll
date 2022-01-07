; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_subsys_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_subsys_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie = type { i32*, i32*, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"subsys\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to map shared register\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"free_ck\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to enable free_ck\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pcie*)* @mtk_pcie_subsys_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_subsys_powerup(%struct.mtk_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_pcie* %0, %struct.mtk_pcie** %3, align 8
  %8 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.platform_device* @to_platform_device(%struct.device* %11)
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
  %15 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %13, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %15, %struct.resource** %6, align 8
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = call i32* @devm_ioremap_resource(%struct.device* %19, %struct.resource* %20)
  %22 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @PTR_ERR(i32* %34)
  store i32 %35, i32* %2, align 4
  br label %82

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32* @devm_clk_get(%struct.device* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %43 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @IS_ERR(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @PTR_ERR(i32* %50)
  %52 = load i32, i32* @EPROBE_DEFER, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %82

58:                                               ; preds = %47
  %59 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %60 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %37
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @pm_runtime_enable(%struct.device* %62)
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @pm_runtime_get_sync(%struct.device* %64)
  %66 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %67 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @clk_prepare_enable(i32* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %76

75:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %82

76:                                               ; preds = %72
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @pm_runtime_put_sync(%struct.device* %77)
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @pm_runtime_disable(%struct.device* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %76, %75, %55, %29
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
