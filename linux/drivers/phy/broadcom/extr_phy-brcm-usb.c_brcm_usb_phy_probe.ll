; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb.c_brcm_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb.c_brcm_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.brcm_usb_phy_data = type { i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Best mapping table is for %s\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't get USB_CTRL base address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't map CTRL register space\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"can't map XHCI EC register space\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"brcm,ipp\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"brcm,ioc\00", align 1
@USB_CTLR_MODE_HOST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@brcm_dr_mode_to_name = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"brcm,has-xhci\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"brcm,has-eohci\00", align 1
@USB_CTLR_MODE_DRD = common dso_local global i32 0, align 4
@brcm_usb_phy_attrs = common dso_local global i32** null, align 8
@brcm_usb_phy_group = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Error creating sysfs attributes\0A\00", align 1
@brcm_usb_phy_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcm_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcm_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.brcm_usb_phy_data*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.brcm_usb_phy_data* @devm_kzalloc(%struct.device* %17, i32 72, i32 %18)
  store %struct.brcm_usb_phy_data* %19, %struct.brcm_usb_phy_data** %6, align 8
  %20 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %21 = icmp ne %struct.brcm_usb_phy_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %211

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.brcm_usb_phy_data* %27)
  %29 = call i32 (...) @brcmstb_get_family_id()
  %30 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %31 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 7
  store i32 %29, i32* %32, align 8
  %33 = call i32 (...) @brcmstb_get_product_id()
  %34 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %35 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  store i32 %33, i32* %36, align 4
  %37 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %38 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %37, i32 0, i32 4
  %39 = call i32 @brcm_usb_set_family_map(%struct.TYPE_6__* %38)
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %42 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %4, align 8
  %49 = load %struct.resource*, %struct.resource** %4, align 8
  %50 = icmp ne %struct.resource* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %25
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %211

56:                                               ; preds = %25
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.resource*, %struct.resource** %4, align 8
  %59 = call i8* @devm_ioremap_resource(%struct.device* %57, %struct.resource* %58)
  %60 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %61 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  store i8* %59, i8** %62, align 8
  %63 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %64 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @IS_ERR(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %211

74:                                               ; preds = %56
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load i32, i32* @IORESOURCE_MEM, align 4
  %77 = call %struct.resource* @platform_get_resource(%struct.platform_device* %75, i32 %76, i32 1)
  store %struct.resource* %77, %struct.resource** %4, align 8
  %78 = load %struct.resource*, %struct.resource** %4, align 8
  %79 = icmp ne %struct.resource* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.resource*, %struct.resource** %4, align 8
  %83 = call i8* @devm_ioremap_resource(%struct.device* %81, %struct.resource* %82)
  %84 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %85 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  store i8* %83, i8** %86, align 8
  %87 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %88 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %80
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %211

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %74
  %100 = load %struct.device_node*, %struct.device_node** %8, align 8
  %101 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %102 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = call i32 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %103)
  %105 = load %struct.device_node*, %struct.device_node** %8, align 8
  %106 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %107 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = call i32 @of_property_read_u32(%struct.device_node* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %108)
  %110 = load i32, i32* @USB_CTLR_MODE_HOST, align 4
  %111 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %112 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.device_node*, %struct.device_node** %8, align 8
  %115 = call i32 @of_property_read_string(%struct.device_node* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %10)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %99
  %119 = load i32*, i32** @brcm_dr_mode_to_name, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32*, i32** @brcm_dr_mode_to_name, align 8
  %122 = call i32 @ARRAY_SIZE(i32* %121)
  %123 = load i8*, i8** %10, align 8
  %124 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %125 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = call i32 @name_to_value(i32* %120, i32 %122, i8* %123, i32* %126)
  br label %128

128:                                              ; preds = %118, %99
  %129 = load %struct.device_node*, %struct.device_node** %8, align 8
  %130 = call i64 @of_property_read_bool(%struct.device_node* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %134 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %128
  %136 = load %struct.device_node*, %struct.device_node** %8, align 8
  %137 = call i64 @of_property_read_bool(%struct.device_node* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %141 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %135
  %143 = load %struct.device*, %struct.device** %5, align 8
  %144 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %145 = load %struct.device_node*, %struct.device_node** %8, align 8
  %146 = call i32 @brcm_usb_phy_dvr_init(%struct.device* %143, %struct.brcm_usb_phy_data* %144, %struct.device_node* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %2, align 4
  br label %211

151:                                              ; preds = %142
  %152 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %153 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %152, i32 0, i32 5
  %154 = call i32 @mutex_init(i32* %153)
  %155 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %156 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %155, i32 0, i32 4
  %157 = call i32 @brcm_usb_init_ipp(%struct.TYPE_6__* %156)
  %158 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %159 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @USB_CTLR_MODE_DRD, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %151
  %165 = load i32**, i32*** @brcm_usb_phy_attrs, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 1
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %164, %151
  %168 = load %struct.device*, %struct.device** %5, align 8
  %169 = getelementptr inbounds %struct.device, %struct.device* %168, i32 0, i32 0
  %170 = call i32 @sysfs_create_group(i32* %169, i32* @brcm_usb_phy_group)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.device*, %struct.device** %5, align 8
  %175 = call i32 @dev_warn(%struct.device* %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %167
  %177 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %178 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %183 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %182, i32 0, i32 4
  %184 = call i32 @brcm_usb_uninit_xhci(%struct.TYPE_6__* %183)
  br label %185

185:                                              ; preds = %181, %176
  %186 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %187 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %192 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %191, i32 0, i32 4
  %193 = call i32 @brcm_usb_uninit_eohci(%struct.TYPE_6__* %192)
  br label %194

194:                                              ; preds = %190, %185
  %195 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %196 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %195, i32 0, i32 4
  %197 = call i32 @brcm_usb_uninit_common(%struct.TYPE_6__* %196)
  %198 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %199 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @clk_disable(i32 %200)
  %202 = load %struct.brcm_usb_phy_data*, %struct.brcm_usb_phy_data** %6, align 8
  %203 = getelementptr inbounds %struct.brcm_usb_phy_data, %struct.brcm_usb_phy_data* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @clk_disable(i32 %204)
  %206 = load %struct.device*, %struct.device** %5, align 8
  %207 = load i32, i32* @brcm_usb_phy_xlate, align 4
  %208 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %206, i32 %207)
  store %struct.phy_provider* %208, %struct.phy_provider** %7, align 8
  %209 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %210 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %209)
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %194, %149, %93, %69, %51, %22
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.brcm_usb_phy_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.brcm_usb_phy_data*) #1

declare dso_local i32 @brcmstb_get_family_id(...) #1

declare dso_local i32 @brcmstb_get_product_id(...) #1

declare dso_local i32 @brcm_usb_set_family_map(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @name_to_value(i32*, i32, i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @brcm_usb_phy_dvr_init(%struct.device*, %struct.brcm_usb_phy_data*, %struct.device_node*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @brcm_usb_init_ipp(%struct.TYPE_6__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @brcm_usb_uninit_xhci(%struct.TYPE_6__*) #1

declare dso_local i32 @brcm_usb_uninit_eohci(%struct.TYPE_6__*) #1

declare dso_local i32 @brcm_usb_uninit_common(%struct.TYPE_6__*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
