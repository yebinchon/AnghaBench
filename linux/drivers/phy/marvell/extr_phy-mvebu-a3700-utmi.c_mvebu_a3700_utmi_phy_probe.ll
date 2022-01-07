; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-utmi.c_mvebu_a3700_utmi_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-utmi.c_mvebu_a3700_utmi_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mvebu_a3700_utmi = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Missing UTMI PHY memory resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"marvell,usb-misc-reg\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Missing USB misc purpose system controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to create the UTMI PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_a3700_utmi_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_a3700_utmi_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mvebu_a3700_utmi*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mvebu_a3700_utmi* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.mvebu_a3700_utmi* %12, %struct.mvebu_a3700_utmi** %5, align 8
  %13 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %14 = icmp ne %struct.mvebu_a3700_utmi* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %112

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %7, align 8
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %112

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = call i32 @devm_ioremap_resource(%struct.device* %30, %struct.resource* %31)
  %33 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %34 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %36 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %42 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %112

45:                                               ; preds = %29
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @syscon_regmap_lookup_by_phandle(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %51 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %53 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %61 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %112

64:                                               ; preds = %45
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call %struct.TYPE_3__* @of_device_get_match_data(%struct.device* %65)
  %67 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %68 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %67, i32 0, i32 1
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %68, align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %71 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @devm_phy_create(%struct.device* %69, i32* null, %struct.TYPE_4__* %74)
  %76 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %77 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %79 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %64
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %87 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @PTR_ERR(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %112

90:                                               ; preds = %64
  %91 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %92 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %95 = call i32 @phy_set_drvdata(i32 %93, %struct.mvebu_a3700_utmi* %94)
  %96 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %97 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (i32)*, i32 (i32)** %101, align 8
  %103 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %5, align 8
  %104 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %102(i32 %105)
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load i32, i32* @of_phy_simple_xlate, align 4
  %109 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %107, i32 %108)
  store %struct.phy_provider* %109, %struct.phy_provider** %6, align 8
  %110 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %111 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %90, %83, %57, %40, %24, %15
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.mvebu_a3700_utmi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @devm_phy_create(%struct.device*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @phy_set_drvdata(i32, %struct.mvebu_a3700_utmi*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
