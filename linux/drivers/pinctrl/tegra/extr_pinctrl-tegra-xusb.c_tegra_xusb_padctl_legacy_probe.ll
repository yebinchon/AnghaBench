; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_legacy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_legacy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.tegra_xusb_padctl = type { %struct.phy*, %struct.phy*, %struct.phy**, %struct.phy*, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.phy*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.phy = type { i32 }
%struct.of_device_id = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_xusb_padctl_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@tegra124_pins = common dso_local global i32 0, align 4
@tegra_xusb_padctl_pinctrl_ops = common dso_local global i32 0, align 4
@tegra_xusb_padctl_pinmux_ops = common dso_local global i32 0, align 4
@tegra_xusb_padctl_pinconf_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to register pincontrol\0A\00", align 1
@pcie_phy_ops = common dso_local global i32 0, align 4
@TEGRA_XUSB_PADCTL_PCIE = common dso_local global i64 0, align 8
@sata_phy_ops = common dso_local global i32 0, align 4
@TEGRA_XUSB_PADCTL_SATA = common dso_local global i64 0, align 8
@tegra_xusb_padctl_xlate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to register PHYs: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_xusb_padctl_legacy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tegra_xusb_padctl* @devm_kzalloc(%struct.TYPE_12__* %10, i32 104, i32 %11)
  store %struct.tegra_xusb_padctl* %12, %struct.tegra_xusb_padctl** %4, align 8
  %13 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %14 = icmp ne %struct.tegra_xusb_padctl* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %204

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.tegra_xusb_padctl* %20)
  %22 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %22, i32 0, i32 8
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %27, i32 0, i32 5
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %28, align 8
  %29 = load i32, i32* @tegra_xusb_padctl_of_match, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.of_device_id* @of_match_node(i32 %29, i32 %33)
  store %struct.of_device_id* %34, %struct.of_device_id** %5, align 8
  %35 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 0)
  store %struct.resource* %42, %struct.resource** %6, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = call %struct.phy* @devm_ioremap_resource(%struct.TYPE_12__* %44, %struct.resource* %45)
  %47 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %47, i32 0, i32 6
  store %struct.phy* %46, %struct.phy** %48, align 8
  %49 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %49, i32 0, i32 6
  %51 = load %struct.phy*, %struct.phy** %50, align 8
  %52 = call i64 @IS_ERR(%struct.phy* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %18
  %55 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %55, i32 0, i32 6
  %57 = load %struct.phy*, %struct.phy** %56, align 8
  %58 = call i32 @PTR_ERR(%struct.phy* %57)
  store i32 %58, i32* %2, align 4
  br label %204

59:                                               ; preds = %18
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call %struct.phy* @devm_reset_control_get_exclusive(%struct.TYPE_12__* %61, i32* null)
  %63 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %63, i32 0, i32 0
  store %struct.phy* %62, %struct.phy** %64, align 8
  %65 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %65, i32 0, i32 0
  %67 = load %struct.phy*, %struct.phy** %66, align 8
  %68 = call i64 @IS_ERR(%struct.phy* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %71, i32 0, i32 0
  %73 = load %struct.phy*, %struct.phy** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.phy* %73)
  store i32 %74, i32* %2, align 4
  br label %204

75:                                               ; preds = %59
  %76 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %76, i32 0, i32 0
  %78 = load %struct.phy*, %struct.phy** %77, align 8
  %79 = call i32 @reset_control_deassert(%struct.phy* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %204

84:                                               ; preds = %75
  %85 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %86 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %85, i32 0, i32 4
  %87 = call i32 @memset(%struct.TYPE_11__* %86, i32 0, i32 48)
  %88 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %89 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %88, i32 0, i32 5
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = call i32 @dev_name(%struct.TYPE_12__* %90)
  %92 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %93 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @tegra124_pins, align 4
  %96 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %97 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @tegra124_pins, align 4
  %100 = call i32 @ARRAY_SIZE(i32 %99)
  %101 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %102 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  store i32 %100, i32* %103, align 8
  %104 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %105 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  store i32* @tegra_xusb_padctl_pinctrl_ops, i32** %106, align 8
  %107 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %108 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  store i32* @tegra_xusb_padctl_pinmux_ops, i32** %109, align 8
  %110 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %111 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i32* @tegra_xusb_padctl_pinconf_ops, i32** %112, align 8
  %113 = load i32, i32* @THIS_MODULE, align 4
  %114 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %115 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %120 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %119, i32 0, i32 4
  %121 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %122 = call %struct.phy* @devm_pinctrl_register(%struct.TYPE_12__* %118, %struct.TYPE_11__* %120, %struct.tegra_xusb_padctl* %121)
  %123 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %124 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %123, i32 0, i32 3
  store %struct.phy* %122, %struct.phy** %124, align 8
  %125 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %126 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %125, i32 0, i32 3
  %127 = load %struct.phy*, %struct.phy** %126, align 8
  %128 = call i64 @IS_ERR(%struct.phy* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %84
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %135 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %134, i32 0, i32 3
  %136 = load %struct.phy*, %struct.phy** %135, align 8
  %137 = call i32 @PTR_ERR(%struct.phy* %136)
  store i32 %137, i32* %8, align 4
  br label %198

138:                                              ; preds = %84
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call %struct.phy* @devm_phy_create(%struct.TYPE_12__* %140, i32* null, i32* @pcie_phy_ops)
  store %struct.phy* %141, %struct.phy** %7, align 8
  %142 = load %struct.phy*, %struct.phy** %7, align 8
  %143 = call i64 @IS_ERR(%struct.phy* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load %struct.phy*, %struct.phy** %7, align 8
  %147 = call i32 @PTR_ERR(%struct.phy* %146)
  store i32 %147, i32* %8, align 4
  br label %198

148:                                              ; preds = %138
  %149 = load %struct.phy*, %struct.phy** %7, align 8
  %150 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %151 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %150, i32 0, i32 2
  %152 = load %struct.phy**, %struct.phy*** %151, align 8
  %153 = load i64, i64* @TEGRA_XUSB_PADCTL_PCIE, align 8
  %154 = getelementptr inbounds %struct.phy*, %struct.phy** %152, i64 %153
  store %struct.phy* %149, %struct.phy** %154, align 8
  %155 = load %struct.phy*, %struct.phy** %7, align 8
  %156 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %157 = call i32 @phy_set_drvdata(%struct.phy* %155, %struct.tegra_xusb_padctl* %156)
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call %struct.phy* @devm_phy_create(%struct.TYPE_12__* %159, i32* null, i32* @sata_phy_ops)
  store %struct.phy* %160, %struct.phy** %7, align 8
  %161 = load %struct.phy*, %struct.phy** %7, align 8
  %162 = call i64 @IS_ERR(%struct.phy* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %148
  %165 = load %struct.phy*, %struct.phy** %7, align 8
  %166 = call i32 @PTR_ERR(%struct.phy* %165)
  store i32 %166, i32* %8, align 4
  br label %198

167:                                              ; preds = %148
  %168 = load %struct.phy*, %struct.phy** %7, align 8
  %169 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %170 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %169, i32 0, i32 2
  %171 = load %struct.phy**, %struct.phy*** %170, align 8
  %172 = load i64, i64* @TEGRA_XUSB_PADCTL_SATA, align 8
  %173 = getelementptr inbounds %struct.phy*, %struct.phy** %171, i64 %172
  store %struct.phy* %168, %struct.phy** %173, align 8
  %174 = load %struct.phy*, %struct.phy** %7, align 8
  %175 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %176 = call i32 @phy_set_drvdata(%struct.phy* %174, %struct.tegra_xusb_padctl* %175)
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load i32, i32* @tegra_xusb_padctl_xlate, align 4
  %180 = call %struct.phy* @devm_of_phy_provider_register(%struct.TYPE_12__* %178, i32 %179)
  %181 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %182 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %181, i32 0, i32 1
  store %struct.phy* %180, %struct.phy** %182, align 8
  %183 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %184 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %183, i32 0, i32 1
  %185 = load %struct.phy*, %struct.phy** %184, align 8
  %186 = call i64 @IS_ERR(%struct.phy* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %167
  %189 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %190 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %189, i32 0, i32 1
  %191 = load %struct.phy*, %struct.phy** %190, align 8
  %192 = call i32 @PTR_ERR(%struct.phy* %191)
  store i32 %192, i32* %8, align 4
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load i32, i32* %8, align 4
  %196 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  br label %198

197:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %204

198:                                              ; preds = %188, %164, %145, %130
  %199 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %200 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %199, i32 0, i32 0
  %201 = load %struct.phy*, %struct.phy** %200, align 8
  %202 = call i32 @reset_control_assert(%struct.phy* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %198, %197, %82, %70, %54, %15
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.tegra_xusb_padctl* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_xusb_padctl*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy* @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local %struct.phy* @devm_reset_control_get_exclusive(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @reset_control_deassert(%struct.phy*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.phy* @devm_pinctrl_register(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.tegra_xusb_padctl*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.tegra_xusb_padctl*) #1

declare dso_local %struct.phy* @devm_of_phy_provider_register(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @reset_control_assert(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
