; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_get_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kirin_pcie = type { i8*, i8*, %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dbi\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"hisilicon,hi3660-crgctrl\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"hisilicon,hi3660-sctrl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kirin_pcie*, %struct.platform_device*)* @kirin_pcie_get_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kirin_pcie_get_resource(%struct.kirin_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kirin_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  store %struct.kirin_pcie* %0, %struct.kirin_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %12, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %14, %struct.resource** %7, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load %struct.resource*, %struct.resource** %7, align 8
  %17 = call i8* @devm_ioremap_resource(%struct.device* %15, %struct.resource* %16)
  %18 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %19 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %21 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %27 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @PTR_ERR(i8* %28)
  store i64 %29, i64* %3, align 8
  br label %103

30:                                               ; preds = %2
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %33, %struct.resource** %8, align 8
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load %struct.resource*, %struct.resource** %8, align 8
  %36 = call i8* @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %38 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %40 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %46 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @PTR_ERR(i8* %47)
  store i64 %48, i64* %3, align 8
  br label %103

49:                                               ; preds = %30
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %50, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %52, %struct.resource** %9, align 8
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.resource*, %struct.resource** %9, align 8
  %55 = call i8* @devm_ioremap_resource(%struct.device* %53, %struct.resource* %54)
  %56 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %57 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  %60 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %61 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %49
  %68 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %69 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @PTR_ERR(i8* %72)
  store i64 %73, i64* %3, align 8
  br label %103

74:                                               ; preds = %49
  %75 = call i8* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %77 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %79 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %85 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @PTR_ERR(i8* %86)
  store i64 %87, i64* %3, align 8
  br label %103

88:                                               ; preds = %74
  %89 = call i8* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %91 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %93 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.kirin_pcie*, %struct.kirin_pcie** %4, align 8
  %99 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @PTR_ERR(i8* %100)
  store i64 %101, i64* %3, align 8
  br label %103

102:                                              ; preds = %88
  store i64 0, i64* %3, align 8
  br label %103

103:                                              ; preds = %102, %97, %83, %67, %44, %25
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i8* @syscon_regmap_lookup_by_compatible(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
