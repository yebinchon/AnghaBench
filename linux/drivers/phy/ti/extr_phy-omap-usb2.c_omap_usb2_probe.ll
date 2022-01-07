; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.omap_usb = type { i32, %struct.TYPE_13__, %struct.TYPE_14__*, %struct.phy_provider*, %struct.phy_provider*, i32, %struct.TYPE_14__*, %struct.phy_provider*, %struct.phy_provider*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.usb_otg*, i32, %struct.TYPE_14__* }
%struct.usb_otg = type { %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.phy_provider = type { i32 }
%struct.phy = type opaque
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }
%struct.usb_phy_data = type { i32, i32, i32, i32, i32 }

@omap_usb2_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@OMAP_USB2_CALIBRATE_FALSE_DISCONNECT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"syscon-phy-power\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"can't get syscon-phy-power, using control device\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ctrl-module\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to get control device phandle\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to get control device\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"couldn't get power reg. offset\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"wkupclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"unable to get wkupclk %ld, trying old name\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"usb_phy_cm_clk32k\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"unable to get usb_phy_cm_clk32k\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"found usb_phy_cm_clk32k, please fix DTS\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"unable to get refclk, trying old name\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"usb_otg_ss_refclk960m\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"unable to get usb_otg_ss_refclk960m\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"found usb_otg_ss_refclk960m, please fix DTS\0A\00", align 1
@omap_usb_set_host = common dso_local global i32 0, align 4
@omap_usb_set_peripheral = common dso_local global i32 0, align 4
@OMAP_USB2_HAS_SET_VBUS = common dso_local global i32 0, align 4
@omap_usb_set_vbus = common dso_local global i32 0, align 4
@OMAP_USB2_HAS_START_SRP = common dso_local global i32 0, align 4
@omap_usb_start_srp = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_usb2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_usb2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_usb*, align 8
  %5 = alloca %struct.phy*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.usb_otg*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.platform_device*, align 8
  %12 = alloca %struct.of_device_id*, align 8
  %13 = alloca %struct.usb_phy_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %9, align 8
  %18 = load i32, i32* @omap_usb2_id_table, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.of_device_id* @of_match_device(i32 %18, %struct.TYPE_14__* %20)
  store %struct.of_device_id* %21, %struct.of_device_id** %12, align 8
  %22 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %23 = icmp ne %struct.of_device_id* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %388

27:                                               ; preds = %1
  %28 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %29 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.usb_phy_data*
  store %struct.usb_phy_data* %31, %struct.usb_phy_data** %13, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kzalloc(%struct.TYPE_14__* %33, i32 112, i32 %34)
  %36 = bitcast i8* %35 to %struct.omap_usb*
  store %struct.omap_usb* %36, %struct.omap_usb** %4, align 8
  %37 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %38 = icmp ne %struct.omap_usb* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %388

42:                                               ; preds = %27
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @devm_kzalloc(%struct.TYPE_14__* %44, i32 24, i32 %45)
  %47 = bitcast i8* %46 to %struct.usb_otg*
  store %struct.usb_otg* %47, %struct.usb_otg** %8, align 8
  %48 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %49 = icmp ne %struct.usb_otg* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %388

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %57 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %56, i32 0, i32 2
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %57, align 8
  %58 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %59 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %58, i32 0, i32 2
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %62 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %63, align 8
  %64 = load %struct.usb_phy_data*, %struct.usb_phy_data** %13, align 8
  %65 = getelementptr inbounds %struct.usb_phy_data, %struct.usb_phy_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %68 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %71 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %72 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  store %struct.usb_otg* %70, %struct.usb_otg** %73, align 8
  %74 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %75 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %76 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.usb_phy_data*, %struct.usb_phy_data** %13, align 8
  %79 = getelementptr inbounds %struct.usb_phy_data, %struct.usb_phy_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %82 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 8
  %83 = load %struct.usb_phy_data*, %struct.usb_phy_data** %13, align 8
  %84 = getelementptr inbounds %struct.usb_phy_data, %struct.usb_phy_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %87 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  %88 = load %struct.usb_phy_data*, %struct.usb_phy_data** %13, align 8
  %89 = getelementptr inbounds %struct.usb_phy_data, %struct.usb_phy_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %92 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 8
  %93 = load %struct.usb_phy_data*, %struct.usb_phy_data** %13, align 8
  %94 = getelementptr inbounds %struct.usb_phy_data, %struct.usb_phy_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @OMAP_USB2_CALIBRATE_FALSE_DISCONNECT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %53
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load i32, i32* @IORESOURCE_MEM, align 4
  %102 = call %struct.resource* @platform_get_resource(%struct.platform_device* %100, i32 %101, i32 0)
  store %struct.resource* %102, %struct.resource** %6, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.resource*, %struct.resource** %6, align 8
  %106 = call %struct.phy_provider* @devm_ioremap_resource(%struct.TYPE_14__* %104, %struct.resource* %105)
  %107 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %108 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %107, i32 0, i32 8
  store %struct.phy_provider* %106, %struct.phy_provider** %108, align 8
  %109 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %110 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %109, i32 0, i32 8
  %111 = load %struct.phy_provider*, %struct.phy_provider** %110, align 8
  %112 = call i64 @IS_ERR(%struct.phy_provider* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %99
  %115 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %116 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %115, i32 0, i32 8
  %117 = load %struct.phy_provider*, %struct.phy_provider** %116, align 8
  %118 = call i32 @PTR_ERR(%struct.phy_provider* %117)
  store i32 %118, i32* %2, align 4
  br label %388

119:                                              ; preds = %99
  %120 = load i32, i32* @OMAP_USB2_CALIBRATE_FALSE_DISCONNECT, align 4
  %121 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %122 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %53
  %126 = load %struct.device_node*, %struct.device_node** %9, align 8
  %127 = call %struct.phy_provider* @syscon_regmap_lookup_by_phandle(%struct.device_node* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %129 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %128, i32 0, i32 7
  store %struct.phy_provider* %127, %struct.phy_provider** %129, align 8
  %130 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %131 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %130, i32 0, i32 7
  %132 = load %struct.phy_provider*, %struct.phy_provider** %131, align 8
  %133 = call i64 @IS_ERR(%struct.phy_provider* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %125
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_dbg(%struct.TYPE_14__* %137, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %139 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %140 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %139, i32 0, i32 7
  store %struct.phy_provider* null, %struct.phy_provider** %140, align 8
  %141 = load %struct.device_node*, %struct.device_node** %9, align 8
  %142 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %142, %struct.device_node** %10, align 8
  %143 = load %struct.device_node*, %struct.device_node** %10, align 8
  %144 = icmp ne %struct.device_node* %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %135
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = call i32 @dev_err(%struct.TYPE_14__* %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %388

151:                                              ; preds = %135
  %152 = load %struct.device_node*, %struct.device_node** %10, align 8
  %153 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %152)
  store %struct.platform_device* %153, %struct.platform_device** %11, align 8
  %154 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %155 = icmp ne %struct.platform_device* %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @dev_err(%struct.TYPE_14__* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %388

162:                                              ; preds = %151
  %163 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %166 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %165, i32 0, i32 6
  store %struct.TYPE_14__* %164, %struct.TYPE_14__** %166, align 8
  br label %180

167:                                              ; preds = %125
  %168 = load %struct.device_node*, %struct.device_node** %9, align 8
  %169 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %170 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %169, i32 0, i32 5
  %171 = call i64 @of_property_read_u32_index(%struct.device_node* %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = call i32 @dev_err(%struct.TYPE_14__* %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %388

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %162
  %181 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %182 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %181, i32 0, i32 2
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = call i8* @devm_clk_get(%struct.TYPE_14__* %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %185 = bitcast i8* %184 to %struct.phy_provider*
  %186 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %187 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %186, i32 0, i32 4
  store %struct.phy_provider* %185, %struct.phy_provider** %187, align 8
  %188 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %189 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %188, i32 0, i32 4
  %190 = load %struct.phy_provider*, %struct.phy_provider** %189, align 8
  %191 = call i64 @IS_ERR(%struct.phy_provider* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %246

193:                                              ; preds = %180
  %194 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %195 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %194, i32 0, i32 4
  %196 = load %struct.phy_provider*, %struct.phy_provider** %195, align 8
  %197 = call i32 @PTR_ERR(%struct.phy_provider* %196)
  %198 = load i32, i32* @EPROBE_DEFER, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = load i32, i32* @EPROBE_DEFER, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %2, align 4
  br label %388

204:                                              ; preds = %193
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %208 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %207, i32 0, i32 4
  %209 = load %struct.phy_provider*, %struct.phy_provider** %208, align 8
  %210 = call i32 @PTR_ERR(%struct.phy_provider* %209)
  %211 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_warn(%struct.TYPE_14__* %206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  %212 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %213 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %212, i32 0, i32 2
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %213, align 8
  %215 = call i8* @devm_clk_get(%struct.TYPE_14__* %214, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %216 = bitcast i8* %215 to %struct.phy_provider*
  %217 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %218 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %217, i32 0, i32 4
  store %struct.phy_provider* %216, %struct.phy_provider** %218, align 8
  %219 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %220 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %219, i32 0, i32 4
  %221 = load %struct.phy_provider*, %struct.phy_provider** %220, align 8
  %222 = call i64 @IS_ERR(%struct.phy_provider* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %204
  %225 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %226 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %225, i32 0, i32 4
  %227 = load %struct.phy_provider*, %struct.phy_provider** %226, align 8
  %228 = call i32 @PTR_ERR(%struct.phy_provider* %227)
  %229 = load i32, i32* @EPROBE_DEFER, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp ne i32 %228, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %224
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = call i32 @dev_err(%struct.TYPE_14__* %234, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %236

236:                                              ; preds = %232, %224
  %237 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %238 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %237, i32 0, i32 4
  %239 = load %struct.phy_provider*, %struct.phy_provider** %238, align 8
  %240 = call i32 @PTR_ERR(%struct.phy_provider* %239)
  store i32 %240, i32* %2, align 4
  br label %388

241:                                              ; preds = %204
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %242, i32 0, i32 0
  %244 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_warn(%struct.TYPE_14__* %243, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  br label %245

245:                                              ; preds = %241
  br label %246

246:                                              ; preds = %245, %180
  %247 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %248 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %247, i32 0, i32 2
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = call i8* @devm_clk_get(%struct.TYPE_14__* %249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %251 = bitcast i8* %250 to %struct.phy_provider*
  %252 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %253 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %252, i32 0, i32 3
  store %struct.phy_provider* %251, %struct.phy_provider** %253, align 8
  %254 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %255 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %254, i32 0, i32 3
  %256 = load %struct.phy_provider*, %struct.phy_provider** %255, align 8
  %257 = call i64 @IS_ERR(%struct.phy_provider* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %304

259:                                              ; preds = %246
  %260 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %261 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %260, i32 0, i32 3
  %262 = load %struct.phy_provider*, %struct.phy_provider** %261, align 8
  %263 = call i32 @PTR_ERR(%struct.phy_provider* %262)
  %264 = load i32, i32* @EPROBE_DEFER, align 4
  %265 = sub nsw i32 0, %264
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load i32, i32* @EPROBE_DEFER, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %2, align 4
  br label %388

270:                                              ; preds = %259
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %271, i32 0, i32 0
  %273 = call i32 @dev_dbg(%struct.TYPE_14__* %272, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %274 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %275 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %274, i32 0, i32 2
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = call i8* @devm_clk_get(%struct.TYPE_14__* %276, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %278 = bitcast i8* %277 to %struct.phy_provider*
  %279 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %280 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %279, i32 0, i32 3
  store %struct.phy_provider* %278, %struct.phy_provider** %280, align 8
  %281 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %282 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %281, i32 0, i32 3
  %283 = load %struct.phy_provider*, %struct.phy_provider** %282, align 8
  %284 = call i64 @IS_ERR(%struct.phy_provider* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %270
  %287 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %288 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %287, i32 0, i32 3
  %289 = load %struct.phy_provider*, %struct.phy_provider** %288, align 8
  %290 = call i32 @PTR_ERR(%struct.phy_provider* %289)
  %291 = load i32, i32* @EPROBE_DEFER, align 4
  %292 = sub nsw i32 0, %291
  %293 = icmp ne i32 %290, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %286
  %295 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %296 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %295, i32 0, i32 0
  %297 = call i32 @dev_dbg(%struct.TYPE_14__* %296, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %298

298:                                              ; preds = %294, %286
  br label %303

299:                                              ; preds = %270
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %300, i32 0, i32 0
  %302 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_warn(%struct.TYPE_14__* %301, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  br label %303

303:                                              ; preds = %299, %298
  br label %304

304:                                              ; preds = %303, %246
  %305 = load i32, i32* @omap_usb_set_host, align 4
  %306 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %307 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %306, i32 0, i32 4
  store i32 %305, i32* %307, align 4
  %308 = load i32, i32* @omap_usb_set_peripheral, align 4
  %309 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %310 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 8
  %311 = load %struct.usb_phy_data*, %struct.usb_phy_data** %13, align 8
  %312 = getelementptr inbounds %struct.usb_phy_data, %struct.usb_phy_data* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @OMAP_USB2_HAS_SET_VBUS, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %304
  %318 = load i32, i32* @omap_usb_set_vbus, align 4
  %319 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %320 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %319, i32 0, i32 2
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %317, %304
  %322 = load %struct.usb_phy_data*, %struct.usb_phy_data** %13, align 8
  %323 = getelementptr inbounds %struct.usb_phy_data, %struct.usb_phy_data* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @OMAP_USB2_HAS_START_SRP, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %321
  %329 = load i32, i32* @omap_usb_start_srp, align 4
  %330 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %331 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %330, i32 0, i32 1
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %328, %321
  %333 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %334 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %333, i32 0, i32 1
  %335 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %336 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %335, i32 0, i32 0
  store %struct.TYPE_13__* %334, %struct.TYPE_13__** %336, align 8
  %337 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %338 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %339 = call i32 @platform_set_drvdata(%struct.platform_device* %337, %struct.omap_usb* %338)
  %340 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %341 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %340, i32 0, i32 2
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %341, align 8
  %343 = call i32 @pm_runtime_enable(%struct.TYPE_14__* %342)
  %344 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %345 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %344, i32 0, i32 2
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %345, align 8
  %347 = call %struct.phy_provider* @devm_phy_create(%struct.TYPE_14__* %346, i32* null, i32* @ops)
  %348 = bitcast %struct.phy_provider* %347 to %struct.phy*
  store %struct.phy* %348, %struct.phy** %5, align 8
  %349 = load %struct.phy*, %struct.phy** %5, align 8
  %350 = bitcast %struct.phy* %349 to %struct.phy_provider*
  %351 = call i64 @IS_ERR(%struct.phy_provider* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %332
  %354 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %355 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %354, i32 0, i32 2
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %355, align 8
  %357 = call i32 @pm_runtime_disable(%struct.TYPE_14__* %356)
  %358 = load %struct.phy*, %struct.phy** %5, align 8
  %359 = bitcast %struct.phy* %358 to %struct.phy_provider*
  %360 = call i32 @PTR_ERR(%struct.phy_provider* %359)
  store i32 %360, i32* %2, align 4
  br label %388

361:                                              ; preds = %332
  %362 = load %struct.phy*, %struct.phy** %5, align 8
  %363 = bitcast %struct.phy* %362 to %struct.phy_provider*
  %364 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %365 = call i32 @phy_set_drvdata(%struct.phy_provider* %363, %struct.omap_usb* %364)
  %366 = load %struct.phy*, %struct.phy** %5, align 8
  %367 = bitcast %struct.phy* %366 to %struct.phy_provider*
  %368 = call i32 @omap_usb_power_off(%struct.phy_provider* %367)
  %369 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %370 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %369, i32 0, i32 2
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %370, align 8
  %372 = load i32, i32* @of_phy_simple_xlate, align 4
  %373 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_14__* %371, i32 %372)
  store %struct.phy_provider* %373, %struct.phy_provider** %7, align 8
  %374 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %375 = call i64 @IS_ERR(%struct.phy_provider* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %361
  %378 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %379 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %378, i32 0, i32 2
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %379, align 8
  %381 = call i32 @pm_runtime_disable(%struct.TYPE_14__* %380)
  %382 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %383 = call i32 @PTR_ERR(%struct.phy_provider* %382)
  store i32 %383, i32* %2, align 4
  br label %388

384:                                              ; preds = %361
  %385 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %386 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %385, i32 0, i32 1
  %387 = call i32 @usb_add_phy_dev(%struct.TYPE_13__* %386)
  store i32 0, i32* %2, align 4
  br label %388

388:                                              ; preds = %384, %377, %353, %267, %236, %201, %173, %156, %145, %114, %50, %39, %24
  %389 = load i32, i32* %2, align 4
  ret i32 %389
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_14__*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_usb*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_14__*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_14__*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.omap_usb*) #1

declare dso_local i32 @omap_usb_power_off(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @usb_add_phy_dev(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
