; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stih407-usb.c_stih407_usb2_picophy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stih407-usb.c_stih407_usb2_picophy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stih407_usb2_picophy = type { %struct.phy_provider*, i32, i32, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.device* }
%struct.phy_provider = type { i32 }
%struct.phy = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to ctrl picoPHY reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"No syscfg phandle specified\0A\00", align 1
@PHYPARAM_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"can't get phyparam offset (%d)\0A\00", align 1
@PHYCTRL_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"can't get phyctrl offset (%d)\0A\00", align 1
@stih407_usb2_picophy_data = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to create Display Port PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"STiH407 USB Generic picoPHY driver probed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stih407_usb2_picophy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stih407_usb2_picophy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stih407_usb2_picophy*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.phy*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.stih407_usb2_picophy* @devm_kzalloc(%struct.device* %15, i32 48, i32 %16)
  store %struct.stih407_usb2_picophy* %17, %struct.stih407_usb2_picophy** %4, align 8
  %18 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %19 = icmp ne %struct.stih407_usb2_picophy* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %145

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %26 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %25, i32 0, i32 6
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %29 = call i32 @dev_set_drvdata(%struct.device* %27, %struct.stih407_usb2_picophy* %28)
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call %struct.phy_provider* @devm_reset_control_get_shared(%struct.device* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %33 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %32, i32 0, i32 5
  store %struct.phy_provider* %31, %struct.phy_provider** %33, align 8
  %34 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %35 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %34, i32 0, i32 5
  %36 = load %struct.phy_provider*, %struct.phy_provider** %35, align 8
  %37 = call i64 @IS_ERR(%struct.phy_provider* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %43 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %42, i32 0, i32 5
  %44 = load %struct.phy_provider*, %struct.phy_provider** %43, align 8
  %45 = call i32 @PTR_ERR(%struct.phy_provider* %44)
  store i32 %45, i32* %2, align 4
  br label %145

46:                                               ; preds = %23
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call %struct.phy_provider* @devm_reset_control_get_exclusive(%struct.device* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %50 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %49, i32 0, i32 4
  store %struct.phy_provider* %48, %struct.phy_provider** %50, align 8
  %51 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %52 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %51, i32 0, i32 4
  %53 = load %struct.phy_provider*, %struct.phy_provider** %52, align 8
  %54 = call i64 @IS_ERR(%struct.phy_provider* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %60 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %59, i32 0, i32 4
  %61 = load %struct.phy_provider*, %struct.phy_provider** %60, align 8
  %62 = call i32 @PTR_ERR(%struct.phy_provider* %61)
  store i32 %62, i32* %2, align 4
  br label %145

63:                                               ; preds = %46
  %64 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %65 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %64, i32 0, i32 4
  %66 = load %struct.phy_provider*, %struct.phy_provider** %65, align 8
  %67 = call i32 @reset_control_assert(%struct.phy_provider* %66)
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = call %struct.phy_provider* @syscon_regmap_lookup_by_phandle(%struct.device_node* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %71 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %70, i32 0, i32 3
  store %struct.phy_provider* %69, %struct.phy_provider** %71, align 8
  %72 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %73 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %72, i32 0, i32 3
  %74 = load %struct.phy_provider*, %struct.phy_provider** %73, align 8
  %75 = call i64 @IS_ERR(%struct.phy_provider* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %63
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %81 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %80, i32 0, i32 3
  %82 = load %struct.phy_provider*, %struct.phy_provider** %81, align 8
  %83 = call i32 @PTR_ERR(%struct.phy_provider* %82)
  store i32 %83, i32* %2, align 4
  br label %145

84:                                               ; preds = %63
  %85 = load %struct.device_node*, %struct.device_node** %6, align 8
  %86 = load i32, i32* @PHYPARAM_REG, align 4
  %87 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %88 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %87, i32 0, i32 2
  %89 = call i32 @of_property_read_u32_index(%struct.device_node* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %2, align 4
  br label %145

97:                                               ; preds = %84
  %98 = load %struct.device_node*, %struct.device_node** %6, align 8
  %99 = load i32, i32* @PHYCTRL_REG, align 4
  %100 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %101 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %100, i32 0, i32 1
  %102 = call i32 @of_property_read_u32_index(%struct.device_node* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %145

110:                                              ; preds = %97
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = call %struct.phy_provider* @devm_phy_create(%struct.device* %111, i32* null, i32* @stih407_usb2_picophy_data)
  %113 = bitcast %struct.phy_provider* %112 to %struct.phy*
  store %struct.phy* %113, %struct.phy** %8, align 8
  %114 = load %struct.phy*, %struct.phy** %8, align 8
  %115 = bitcast %struct.phy* %114 to %struct.phy_provider*
  %116 = call i64 @IS_ERR(%struct.phy_provider* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %121 = load %struct.phy*, %struct.phy** %8, align 8
  %122 = bitcast %struct.phy* %121 to %struct.phy_provider*
  %123 = call i32 @PTR_ERR(%struct.phy_provider* %122)
  store i32 %123, i32* %2, align 4
  br label %145

124:                                              ; preds = %110
  %125 = load %struct.phy*, %struct.phy** %8, align 8
  %126 = bitcast %struct.phy* %125 to %struct.phy_provider*
  %127 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %128 = getelementptr inbounds %struct.stih407_usb2_picophy, %struct.stih407_usb2_picophy* %127, i32 0, i32 0
  store %struct.phy_provider* %126, %struct.phy_provider** %128, align 8
  %129 = load %struct.phy*, %struct.phy** %8, align 8
  %130 = bitcast %struct.phy* %129 to %struct.phy_provider*
  %131 = load %struct.stih407_usb2_picophy*, %struct.stih407_usb2_picophy** %4, align 8
  %132 = call i32 @phy_set_drvdata(%struct.phy_provider* %130, %struct.stih407_usb2_picophy* %131)
  %133 = load %struct.device*, %struct.device** %5, align 8
  %134 = load i32, i32* @of_phy_simple_xlate, align 4
  %135 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %133, i32 %134)
  store %struct.phy_provider* %135, %struct.phy_provider** %7, align 8
  %136 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %137 = call i64 @IS_ERR(%struct.phy_provider* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %124
  %140 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %141 = call i32 @PTR_ERR(%struct.phy_provider* %140)
  store i32 %141, i32* %2, align 4
  br label %145

142:                                              ; preds = %124
  %143 = load %struct.device*, %struct.device** %5, align 8
  %144 = call i32 @dev_info(%struct.device* %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %139, %118, %105, %92, %77, %56, %39, %20
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.stih407_usb2_picophy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.stih407_usb2_picophy*) #1

declare dso_local %struct.phy_provider* @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_assert(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.stih407_usb2_picophy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
