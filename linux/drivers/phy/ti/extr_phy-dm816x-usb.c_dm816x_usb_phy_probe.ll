; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-dm816x-usb.c_dm816x_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-dm816x-usb.c_dm816x_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.dm816x_usb_phy = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.phy_provider*, %struct.phy_provider* }
%struct.TYPE_8__ = type { i8*, i32, %struct.usb_otg*, %struct.TYPE_9__* }
%struct.usb_otg = type { %struct.TYPE_8__*, i32, i32 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.phy = type opaque
%struct.of_device_id = type { %struct.usb_phy_data* }
%struct.usb_phy_data = type { i32 }

@dm816x_usb_phy_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dm8168_usb_phy\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@dm816x_usb_phy_set_host = common dso_local global i32 0, align 4
@dm816x_usb_phy_set_peripheral = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dm816x_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm816x_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dm816x_usb_phy*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.usb_otg*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca %struct.usb_phy_data*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @dm816x_usb_phy_id_table, align 4
  %13 = call i32 @of_match_ptr(i32 %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.of_device_id* @of_match_device(i32 %13, %struct.TYPE_9__* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %9, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %189

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.TYPE_9__* %24, i32 72, i32 %25)
  %27 = bitcast i8* %26 to %struct.dm816x_usb_phy*
  store %struct.dm816x_usb_phy* %27, %struct.dm816x_usb_phy** %4, align 8
  %28 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %29 = icmp ne %struct.dm816x_usb_phy* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %189

33:                                               ; preds = %22
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %5, align 8
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = icmp ne %struct.resource* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %189

42:                                               ; preds = %33
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %49 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %48, i32 0, i32 6
  store %struct.phy_provider* %47, %struct.phy_provider** %49, align 8
  %50 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %51 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %50, i32 0, i32 6
  %52 = load %struct.phy_provider*, %struct.phy_provider** %51, align 8
  %53 = call i64 @IS_ERR(%struct.phy_provider* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %57 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %56, i32 0, i32 6
  %58 = load %struct.phy_provider*, %struct.phy_provider** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.phy_provider* %58)
  store i32 %59, i32* %2, align 4
  br label %189

60:                                               ; preds = %42
  %61 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %62 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %61, i32 0, i32 0
  store i32 32, i32* %62, align 8
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = add nsw i32 %66, 4
  %68 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %69 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %71 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 44
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %76 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %60
  %78 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %79 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %78, i32 0, i32 0
  %80 = load %struct.usb_phy_data*, %struct.usb_phy_data** %79, align 8
  store %struct.usb_phy_data* %80, %struct.usb_phy_data** %10, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @devm_kzalloc(%struct.TYPE_9__* %82, i32 16, i32 %83)
  %85 = bitcast i8* %84 to %struct.usb_otg*
  store %struct.usb_otg* %85, %struct.usb_otg** %8, align 8
  %86 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %87 = icmp ne %struct.usb_otg* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %189

91:                                               ; preds = %77
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %95 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %94, i32 0, i32 4
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %95, align 8
  %96 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %97 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %96, i32 0, i32 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %100 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %101, align 8
  %102 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %103 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %104, align 8
  %105 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %106 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %107 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store %struct.usb_otg* %105, %struct.usb_otg** %108, align 8
  %109 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %110 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %111 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* @dm816x_usb_phy_set_host, align 4
  %114 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %115 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @dm816x_usb_phy_set_peripheral, align 4
  %117 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %118 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %120 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %119, i32 0, i32 3
  %121 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %122 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %121, i32 0, i32 0
  store %struct.TYPE_8__* %120, %struct.TYPE_8__** %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.dm816x_usb_phy* %124)
  %126 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %127 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %126, i32 0, i32 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = call %struct.phy_provider* @devm_clk_get(%struct.TYPE_9__* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %131 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %130, i32 0, i32 5
  store %struct.phy_provider* %129, %struct.phy_provider** %131, align 8
  %132 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %133 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %132, i32 0, i32 5
  %134 = load %struct.phy_provider*, %struct.phy_provider** %133, align 8
  %135 = call i64 @IS_ERR(%struct.phy_provider* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %91
  %138 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %139 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %138, i32 0, i32 5
  %140 = load %struct.phy_provider*, %struct.phy_provider** %139, align 8
  %141 = call i32 @PTR_ERR(%struct.phy_provider* %140)
  store i32 %141, i32* %2, align 4
  br label %189

142:                                              ; preds = %91
  %143 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %144 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %143, i32 0, i32 5
  %145 = load %struct.phy_provider*, %struct.phy_provider** %144, align 8
  %146 = call i32 @clk_prepare(%struct.phy_provider* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %2, align 4
  br label %189

151:                                              ; preds = %142
  %152 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %153 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %152, i32 0, i32 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %154)
  %156 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %157 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %156, i32 0, i32 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = call %struct.phy_provider* @devm_phy_create(%struct.TYPE_9__* %158, i32* null, i32* @ops)
  %160 = bitcast %struct.phy_provider* %159 to %struct.phy*
  store %struct.phy* %160, %struct.phy** %6, align 8
  %161 = load %struct.phy*, %struct.phy** %6, align 8
  %162 = bitcast %struct.phy* %161 to %struct.phy_provider*
  %163 = call i64 @IS_ERR(%struct.phy_provider* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %151
  %166 = load %struct.phy*, %struct.phy** %6, align 8
  %167 = bitcast %struct.phy* %166 to %struct.phy_provider*
  %168 = call i32 @PTR_ERR(%struct.phy_provider* %167)
  store i32 %168, i32* %2, align 4
  br label %189

169:                                              ; preds = %151
  %170 = load %struct.phy*, %struct.phy** %6, align 8
  %171 = bitcast %struct.phy* %170 to %struct.phy_provider*
  %172 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %173 = call i32 @phy_set_drvdata(%struct.phy_provider* %171, %struct.dm816x_usb_phy* %172)
  %174 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %175 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %174, i32 0, i32 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load i32, i32* @of_phy_simple_xlate, align 4
  %178 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_9__* %176, i32 %177)
  store %struct.phy_provider* %178, %struct.phy_provider** %7, align 8
  %179 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %180 = call i64 @IS_ERR(%struct.phy_provider* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %169
  %183 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %184 = call i32 @PTR_ERR(%struct.phy_provider* %183)
  store i32 %184, i32* %2, align 4
  br label %189

185:                                              ; preds = %169
  %186 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %4, align 8
  %187 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %186, i32 0, i32 3
  %188 = call i32 @usb_add_phy_dev(%struct.TYPE_8__* %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %182, %165, %149, %137, %88, %55, %39, %30, %19
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dm816x_usb_phy*) #1

declare dso_local %struct.phy_provider* @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @clk_prepare(%struct.phy_provider*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.dm816x_usb_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_add_phy_dev(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
