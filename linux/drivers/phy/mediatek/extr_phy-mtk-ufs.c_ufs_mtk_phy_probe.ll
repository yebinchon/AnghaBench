; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-ufs.c_ufs_mtk_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-ufs.c_ufs_mtk_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy = type { i32 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.ufs_mtk_phy = type { %struct.device*, %struct.phy* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ufs_mtk_phy_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ufs_mtk_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_mtk_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.phy*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.ufs_mtk_phy*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ufs_mtk_phy* @devm_kzalloc(%struct.device* %12, i32 16, i32 %13)
  store %struct.ufs_mtk_phy* %14, %struct.ufs_mtk_phy** %8, align 8
  %15 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %8, align 8
  %16 = icmp ne %struct.ufs_mtk_phy* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %7, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = call %struct.phy* @devm_ioremap_resource(%struct.device* %24, %struct.resource* %25)
  %27 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %8, align 8
  %28 = getelementptr inbounds %struct.ufs_mtk_phy, %struct.ufs_mtk_phy* %27, i32 0, i32 1
  store %struct.phy* %26, %struct.phy** %28, align 8
  %29 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %8, align 8
  %30 = getelementptr inbounds %struct.ufs_mtk_phy, %struct.ufs_mtk_phy* %29, i32 0, i32 1
  %31 = load %struct.phy*, %struct.phy** %30, align 8
  %32 = call i64 @IS_ERR(%struct.phy* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %8, align 8
  %36 = getelementptr inbounds %struct.ufs_mtk_phy, %struct.ufs_mtk_phy* %35, i32 0, i32 1
  %37 = load %struct.phy*, %struct.phy** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.phy* %37)
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %20
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %8, align 8
  %42 = getelementptr inbounds %struct.ufs_mtk_phy, %struct.ufs_mtk_phy* %41, i32 0, i32 0
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %8, align 8
  %44 = call i32 @ufs_mtk_phy_clk_init(%struct.ufs_mtk_phy* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %2, align 4
  br label %67

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call %struct.phy* @devm_phy_create(%struct.device* %50, i32* null, i32* @ufs_mtk_phy_ops)
  store %struct.phy* %51, %struct.phy** %5, align 8
  %52 = load %struct.phy*, %struct.phy** %5, align 8
  %53 = call i64 @IS_ERR(%struct.phy* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.phy*, %struct.phy** %5, align 8
  %57 = call i32 @PTR_ERR(%struct.phy* %56)
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %49
  %59 = load %struct.phy*, %struct.phy** %5, align 8
  %60 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %8, align 8
  %61 = call i32 @phy_set_drvdata(%struct.phy* %59, %struct.ufs_mtk_phy* %60)
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* @of_phy_simple_xlate, align 4
  %64 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %62, i32 %63)
  store %struct.phy_provider* %64, %struct.phy_provider** %6, align 8
  %65 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %66 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %58, %55, %47, %34, %17
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.ufs_mtk_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @ufs_mtk_phy_clk_init(%struct.ufs_mtk_phy*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.ufs_mtk_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
