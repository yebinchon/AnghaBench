; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-pcie.c_sr_pcie_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-pcie.c_sr_pcie_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_ops = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sr_pcie_phy_core = type { %struct.sr_pcie_phy*, i32, %struct.device*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider* }
%struct.sr_pcie_phy = type { i32, %struct.phy_provider*, %struct.sr_pcie_phy_core* }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"brcm,sr-cdru\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to find CDRU device\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"brcm,sr-mhb\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to find MHB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid PCIe PIPEMUX strap %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SR_NR_PCIE_PHYS = common dso_local global i32 0, align 4
@SR_PAXC_PHY_IDX = common dso_local global i32 0, align 4
@sr_paxc_phy_ops = common dso_local global %struct.phy_ops zeroinitializer, align 4
@sr_pcie_phy_ops = common dso_local global %struct.phy_ops zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to create PCIe PHY\0A\00", align 1
@sr_pcie_phy_xlate = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register PHY provider\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Stingray PCIe PHY driver initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sr_pcie_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_pcie_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sr_pcie_phy_core*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.phy_provider*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sr_pcie_phy*, align 8
  %11 = alloca %struct.phy_ops*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sr_pcie_phy_core* @devm_kzalloc(%struct.device* %17, i32 48, i32 %18)
  store %struct.sr_pcie_phy_core* %19, %struct.sr_pcie_phy_core** %6, align 8
  %20 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %21 = icmp ne %struct.sr_pcie_phy_core* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %177

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %28 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %27, i32 0, i32 2
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %7, align 8
  %32 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %33 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %32, i32 0, i32 2
  %34 = load %struct.device*, %struct.device** %33, align 8
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %38 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %37, i32 0, i32 5
  store %struct.phy_provider* %36, %struct.phy_provider** %38, align 8
  %39 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %40 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %39, i32 0, i32 5
  %41 = load %struct.phy_provider*, %struct.phy_provider** %40, align 8
  %42 = call i64 @IS_ERR(%struct.phy_provider* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %46 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %45, i32 0, i32 5
  %47 = load %struct.phy_provider*, %struct.phy_provider** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.phy_provider* %47)
  store i32 %48, i32* %2, align 4
  br label %177

49:                                               ; preds = %25
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %52 = bitcast i8* %51 to %struct.phy_provider*
  %53 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %54 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %53, i32 0, i32 4
  store %struct.phy_provider* %52, %struct.phy_provider** %54, align 8
  %55 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %56 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %55, i32 0, i32 4
  %57 = load %struct.phy_provider*, %struct.phy_provider** %56, align 8
  %58 = call i64 @IS_ERR(%struct.phy_provider* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %62 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %61, i32 0, i32 2
  %63 = load %struct.device*, %struct.device** %62, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %66 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %65, i32 0, i32 4
  %67 = load %struct.phy_provider*, %struct.phy_provider** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.phy_provider* %67)
  store i32 %68, i32* %2, align 4
  br label %177

69:                                               ; preds = %49
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %72 = bitcast i8* %71 to %struct.phy_provider*
  %73 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %74 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %73, i32 0, i32 3
  store %struct.phy_provider* %72, %struct.phy_provider** %74, align 8
  %75 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %76 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %75, i32 0, i32 3
  %77 = load %struct.phy_provider*, %struct.phy_provider** %76, align 8
  %78 = call i64 @IS_ERR(%struct.phy_provider* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %82 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %81, i32 0, i32 2
  %83 = load %struct.device*, %struct.device** %82, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %86 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %85, i32 0, i32 3
  %87 = load %struct.phy_provider*, %struct.phy_provider** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.phy_provider* %87)
  store i32 %88, i32* %2, align 4
  br label %177

89:                                               ; preds = %69
  %90 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %91 = call i32 @pipemux_strap_read(%struct.sr_pcie_phy_core* %90)
  %92 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %93 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %95 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pipemux_strap_is_valid(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %89
  %100 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %101 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %100, i32 0, i32 2
  %102 = load %struct.device*, %struct.device** %101, align 8
  %103 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %104 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %177

109:                                              ; preds = %89
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %156, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @SR_NR_PCIE_PHYS, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %159

114:                                              ; preds = %110
  %115 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %116 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %115, i32 0, i32 0
  %117 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %117, i64 %119
  store %struct.sr_pcie_phy* %120, %struct.sr_pcie_phy** %10, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @SR_PAXC_PHY_IDX, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  store %struct.phy_ops* @sr_paxc_phy_ops, %struct.phy_ops** %11, align 8
  br label %126

125:                                              ; preds = %114
  store %struct.phy_ops* @sr_pcie_phy_ops, %struct.phy_ops** %11, align 8
  br label %126

126:                                              ; preds = %125, %124
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load %struct.phy_ops*, %struct.phy_ops** %11, align 8
  %129 = call %struct.phy_provider* @devm_phy_create(%struct.device* %127, i32* null, %struct.phy_ops* %128)
  %130 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %10, align 8
  %131 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %130, i32 0, i32 1
  store %struct.phy_provider* %129, %struct.phy_provider** %131, align 8
  %132 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %10, align 8
  %133 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %132, i32 0, i32 1
  %134 = load %struct.phy_provider*, %struct.phy_provider** %133, align 8
  %135 = call i64 @IS_ERR(%struct.phy_provider* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %126
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %140 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %10, align 8
  %141 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %140, i32 0, i32 1
  %142 = load %struct.phy_provider*, %struct.phy_provider** %141, align 8
  %143 = call i32 @PTR_ERR(%struct.phy_provider* %142)
  store i32 %143, i32* %2, align 4
  br label %177

144:                                              ; preds = %126
  %145 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %146 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %10, align 8
  %147 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %146, i32 0, i32 2
  store %struct.sr_pcie_phy_core* %145, %struct.sr_pcie_phy_core** %147, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %10, align 8
  %150 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %10, align 8
  %152 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %151, i32 0, i32 1
  %153 = load %struct.phy_provider*, %struct.phy_provider** %152, align 8
  %154 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %10, align 8
  %155 = call i32 @phy_set_drvdata(%struct.phy_provider* %153, %struct.sr_pcie_phy* %154)
  br label %156

156:                                              ; preds = %144
  %157 = load i32, i32* %9, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %110

159:                                              ; preds = %110
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %162 = call i32 @dev_set_drvdata(%struct.device* %160, %struct.sr_pcie_phy_core* %161)
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = load i32, i32* @sr_pcie_phy_xlate, align 4
  %165 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %163, i32 %164)
  store %struct.phy_provider* %165, %struct.phy_provider** %8, align 8
  %166 = load %struct.phy_provider*, %struct.phy_provider** %8, align 8
  %167 = call i64 @IS_ERR(%struct.phy_provider* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %159
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %172 = load %struct.phy_provider*, %struct.phy_provider** %8, align 8
  %173 = call i32 @PTR_ERR(%struct.phy_provider* %172)
  store i32 %173, i32* %2, align 4
  br label %177

174:                                              ; preds = %159
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = call i32 @dev_info(%struct.device* %175, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %174, %169, %137, %99, %80, %60, %44, %22
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.sr_pcie_phy_core* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pipemux_strap_read(%struct.sr_pcie_phy_core*) #1

declare dso_local i32 @pipemux_strap_is_valid(i32) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, %struct.phy_ops*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.sr_pcie_phy*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.sr_pcie_phy_core*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
