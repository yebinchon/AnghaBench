; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb3.c_rcar_gen3_phy_usb3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb3.c_rcar_gen3_phy_usb3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rcar_gen3_usb3 = type { i32, i32, %struct.phy_provider*, i32, %struct.phy_provider* }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.clk = type opaque

@.str = private unnamed_addr constant [31 x i8] c"This driver needs device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"usb3s_clk\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"usb_extal\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"This driver needs usb3s_clk and/or usb_extal\0A\00", align 1
@rcar_gen3_phy_usb3_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to create USB3 PHY\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"renesas,ssc-range\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register PHY provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_gen3_phy_usb3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_phy_usb3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rcar_gen3_usb3*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %166

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.rcar_gen3_usb3* @devm_kzalloc(%struct.device* %22, i32 32, i32 %23)
  store %struct.rcar_gen3_usb3* %24, %struct.rcar_gen3_usb3** %5, align 8
  %25 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %26 = icmp ne %struct.rcar_gen3_usb3* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %166

30:                                               ; preds = %21
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %7, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %38 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %37, i32 0, i32 4
  store %struct.phy_provider* %36, %struct.phy_provider** %38, align 8
  %39 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %40 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %39, i32 0, i32 4
  %41 = load %struct.phy_provider*, %struct.phy_provider** %40, align 8
  %42 = call i64 @IS_ERR(%struct.phy_provider* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %46 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %45, i32 0, i32 4
  %47 = load %struct.phy_provider*, %struct.phy_provider** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.phy_provider* %47)
  store i32 %48, i32* %2, align 4
  br label %166

49:                                               ; preds = %30
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call %struct.phy_provider* @devm_clk_get(%struct.device* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %52 = bitcast %struct.phy_provider* %51 to %struct.clk*
  store %struct.clk* %52, %struct.clk** %9, align 8
  %53 = load %struct.clk*, %struct.clk** %9, align 8
  %54 = bitcast %struct.clk* %53 to %struct.phy_provider*
  %55 = call i64 @IS_ERR(%struct.phy_provider* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %49
  %58 = load %struct.clk*, %struct.clk** %9, align 8
  %59 = bitcast %struct.clk* %58 to %struct.phy_provider*
  %60 = call i32 @clk_prepare_enable(%struct.phy_provider* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = load %struct.clk*, %struct.clk** %9, align 8
  %64 = bitcast %struct.clk* %63 to %struct.phy_provider*
  %65 = call i32 @clk_get_rate(%struct.phy_provider* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %71 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.clk*, %struct.clk** %9, align 8
  %73 = bitcast %struct.clk* %72 to %struct.phy_provider*
  %74 = call i32 @clk_disable_unprepare(%struct.phy_provider* %73)
  br label %75

75:                                               ; preds = %62, %57, %49
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call %struct.phy_provider* @devm_clk_get(%struct.device* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %78 = bitcast %struct.phy_provider* %77 to %struct.clk*
  store %struct.clk* %78, %struct.clk** %9, align 8
  %79 = load %struct.clk*, %struct.clk** %9, align 8
  %80 = bitcast %struct.clk* %79 to %struct.phy_provider*
  %81 = call i64 @IS_ERR(%struct.phy_provider* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %75
  %84 = load %struct.clk*, %struct.clk** %9, align 8
  %85 = bitcast %struct.clk* %84 to %struct.phy_provider*
  %86 = call i32 @clk_prepare_enable(%struct.phy_provider* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %83
  %89 = load %struct.clk*, %struct.clk** %9, align 8
  %90 = bitcast %struct.clk* %89 to %struct.phy_provider*
  %91 = call i32 @clk_get_rate(%struct.phy_provider* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %97 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.clk*, %struct.clk** %9, align 8
  %99 = bitcast %struct.clk* %98 to %struct.phy_provider*
  %100 = call i32 @clk_disable_unprepare(%struct.phy_provider* %99)
  br label %101

101:                                              ; preds = %88, %83, %75
  %102 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %103 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %108 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %162

116:                                              ; preds = %106, %101
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @pm_runtime_enable(%struct.device* %117)
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call %struct.phy_provider* @devm_phy_create(%struct.device* %119, i32* null, i32* @rcar_gen3_phy_usb3_ops)
  %121 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %122 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %121, i32 0, i32 2
  store %struct.phy_provider* %120, %struct.phy_provider** %122, align 8
  %123 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %124 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %123, i32 0, i32 2
  %125 = load %struct.phy_provider*, %struct.phy_provider** %124, align 8
  %126 = call i64 @IS_ERR(%struct.phy_provider* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %116
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %132 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %131, i32 0, i32 2
  %133 = load %struct.phy_provider*, %struct.phy_provider** %132, align 8
  %134 = call i32 @PTR_ERR(%struct.phy_provider* %133)
  store i32 %134, i32* %8, align 4
  br label %162

135:                                              ; preds = %116
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = getelementptr inbounds %struct.device, %struct.device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %140 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %139, i32 0, i32 3
  %141 = call i32 @of_property_read_u32(i32 %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %144 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.rcar_gen3_usb3* %143)
  %145 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %146 = getelementptr inbounds %struct.rcar_gen3_usb3, %struct.rcar_gen3_usb3* %145, i32 0, i32 2
  %147 = load %struct.phy_provider*, %struct.phy_provider** %146, align 8
  %148 = load %struct.rcar_gen3_usb3*, %struct.rcar_gen3_usb3** %5, align 8
  %149 = call i32 @phy_set_drvdata(%struct.phy_provider* %147, %struct.rcar_gen3_usb3* %148)
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load i32, i32* @of_phy_simple_xlate, align 4
  %152 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %150, i32 %151)
  store %struct.phy_provider* %152, %struct.phy_provider** %6, align 8
  %153 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %154 = call i64 @IS_ERR(%struct.phy_provider* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %135
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = call i32 @dev_err(%struct.device* %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %159 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %160 = call i32 @PTR_ERR(%struct.phy_provider* %159)
  store i32 %160, i32* %8, align 4
  br label %162

161:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %166

162:                                              ; preds = %156, %128, %111
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = call i32 @pm_runtime_disable(%struct.device* %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %162, %161, %44, %27, %16
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.rcar_gen3_usb3* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.phy_provider*) #1

declare dso_local i32 @clk_get_rate(%struct.phy_provider*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.phy_provider*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_gen3_usb3*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.rcar_gen3_usb3*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
