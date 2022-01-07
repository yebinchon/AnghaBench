; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.phy_provider = type { i32 }
%struct.serdes_ctrl = type { %struct.TYPE_6__*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SERDES_MAX = common dso_local global i32 0, align 4
@serdes_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serdes_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.serdes_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.serdes_ctrl* @devm_kzalloc(%struct.TYPE_6__* %9, i32 24, i32 %10)
  store %struct.serdes_ctrl* %11, %struct.serdes_ctrl** %5, align 8
  %12 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %13 = icmp ne %struct.serdes_ctrl* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.serdes_ctrl, %struct.serdes_ctrl* %20, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @syscon_node_to_regmap(i32 %27)
  %29 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.serdes_ctrl, %struct.serdes_ctrl* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %32 = getelementptr inbounds %struct.serdes_ctrl, %struct.serdes_ctrl* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %17
  %37 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %38 = getelementptr inbounds %struct.serdes_ctrl, %struct.serdes_ctrl* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %76

41:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SERDES_MAX, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %50 = getelementptr inbounds %struct.serdes_ctrl, %struct.serdes_ctrl* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @serdes_phy_create(%struct.serdes_ctrl* %47, i32 %48, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %76

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %42

64:                                               ; preds = %42
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %68 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %66, %struct.serdes_ctrl* %67)
  %69 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %5, align 8
  %70 = getelementptr inbounds %struct.serdes_ctrl, %struct.serdes_ctrl* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* @serdes_simple_xlate, align 4
  %73 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_6__* %71, i32 %72)
  store %struct.phy_provider* %73, %struct.phy_provider** %4, align 8
  %74 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %75 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %64, %58, %36, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.serdes_ctrl* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @serdes_phy_create(%struct.serdes_ctrl*, i32, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, %struct.serdes_ctrl*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
