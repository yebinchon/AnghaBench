; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-pistachio-usb.c_pistachio_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-pistachio-usb.c_pistachio_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pistachio_usb_phy = type { %struct.TYPE_6__*, i32, %struct.phy_provider*, %struct.phy_provider* }
%struct.phy_provider = type { i32 }
%struct.phy = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"img,cr-top\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to get CR_TOP registers: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"usb_phy\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to get usb_phy clock: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"img,refclk\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"No reference clock selector specified\0A\00", align 1
@pistachio_usb_phy_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to create PHY: %ld\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed to register PHY provider: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pistachio_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pistachio_usb_phy*, align 8
  %5 = alloca %struct.phy_provider*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pistachio_usb_phy* @devm_kzalloc(%struct.TYPE_6__* %9, i32 32, i32 %10)
  store %struct.pistachio_usb_phy* %11, %struct.pistachio_usb_phy** %4, align 8
  %12 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %13 = icmp ne %struct.pistachio_usb_phy* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %137

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %21 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %20, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.pistachio_usb_phy* %23)
  %25 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %26 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %32 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %31, i32 0, i32 3
  store %struct.phy_provider* %30, %struct.phy_provider** %32, align 8
  %33 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %34 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %33, i32 0, i32 3
  %35 = load %struct.phy_provider*, %struct.phy_provider** %34, align 8
  %36 = call i64 @IS_ERR(%struct.phy_provider* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %17
  %39 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %40 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %43 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %42, i32 0, i32 3
  %44 = load %struct.phy_provider*, %struct.phy_provider** %43, align 8
  %45 = call i32 @PTR_ERR(%struct.phy_provider* %44)
  %46 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %48 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %47, i32 0, i32 3
  %49 = load %struct.phy_provider*, %struct.phy_provider** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.phy_provider* %49)
  store i32 %50, i32* %2, align 4
  br label %137

51:                                               ; preds = %17
  %52 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %53 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call %struct.phy_provider* @devm_clk_get(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %57 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %56, i32 0, i32 2
  store %struct.phy_provider* %55, %struct.phy_provider** %57, align 8
  %58 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %59 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %58, i32 0, i32 2
  %60 = load %struct.phy_provider*, %struct.phy_provider** %59, align 8
  %61 = call i64 @IS_ERR(%struct.phy_provider* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %51
  %64 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %65 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %68 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %67, i32 0, i32 2
  %69 = load %struct.phy_provider*, %struct.phy_provider** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.phy_provider* %69)
  %71 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %73 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %72, i32 0, i32 2
  %74 = load %struct.phy_provider*, %struct.phy_provider** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.phy_provider* %74)
  store i32 %75, i32* %2, align 4
  br label %137

76:                                               ; preds = %51
  %77 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %78 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %83 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %82, i32 0, i32 1
  %84 = call i32 @of_property_read_u32(i32 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %89 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %137

93:                                               ; preds = %76
  %94 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %95 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = call %struct.phy_provider* @devm_phy_create(%struct.TYPE_6__* %96, i32* null, i32* @pistachio_usb_phy_ops)
  %98 = bitcast %struct.phy_provider* %97 to %struct.phy*
  store %struct.phy* %98, %struct.phy** %6, align 8
  %99 = load %struct.phy*, %struct.phy** %6, align 8
  %100 = bitcast %struct.phy* %99 to %struct.phy_provider*
  %101 = call i64 @IS_ERR(%struct.phy_provider* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %93
  %104 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %105 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load %struct.phy*, %struct.phy** %6, align 8
  %108 = bitcast %struct.phy* %107 to %struct.phy_provider*
  %109 = call i32 @PTR_ERR(%struct.phy_provider* %108)
  %110 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = load %struct.phy*, %struct.phy** %6, align 8
  %112 = bitcast %struct.phy* %111 to %struct.phy_provider*
  %113 = call i32 @PTR_ERR(%struct.phy_provider* %112)
  store i32 %113, i32* %2, align 4
  br label %137

114:                                              ; preds = %93
  %115 = load %struct.phy*, %struct.phy** %6, align 8
  %116 = bitcast %struct.phy* %115 to %struct.phy_provider*
  %117 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %118 = call i32 @phy_set_drvdata(%struct.phy_provider* %116, %struct.pistachio_usb_phy* %117)
  %119 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %120 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* @of_phy_simple_xlate, align 4
  %123 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_6__* %121, i32 %122)
  store %struct.phy_provider* %123, %struct.phy_provider** %5, align 8
  %124 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  %125 = call i64 @IS_ERR(%struct.phy_provider* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %114
  %128 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %129 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  %132 = call i32 @PTR_ERR(%struct.phy_provider* %131)
  %133 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  %134 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  %135 = call i32 @PTR_ERR(%struct.phy_provider* %134)
  store i32 %135, i32* %2, align 4
  br label %137

136:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %127, %103, %87, %63, %38, %14
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.pistachio_usb_phy* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pistachio_usb_phy*) #1

declare dso_local %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.pistachio_usb_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
