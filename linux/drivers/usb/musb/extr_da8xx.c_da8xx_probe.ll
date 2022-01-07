; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_da8xx.c_da8xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_da8xx.c_da8xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device_info = type { i32, i32, %struct.musb_hdrc_platform_data*, %struct.resource*, %struct.TYPE_11__* }
%struct.musb_hdrc_platform_data = type { i32*, i32, i32, i32* }
%struct.resource = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.da8xx_glue = type { i32, i32, %struct.clk*, %struct.TYPE_11__*, %struct.clk* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to get phy\0A\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@da8xx_config = common dso_local global i32 0, align 4
@da8xx_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to register usb_phy\0A\00", align 1
@da8xx_auxdata_lookup = common dso_local global i32 0, align 4
@da8xx_dev_info = common dso_local global %struct.platform_device_info zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to register musb device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da8xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca [2 x %struct.resource], align 16
  %5 = alloca %struct.musb_hdrc_platform_data*, align 8
  %6 = alloca %struct.da8xx_glue*, align 8
  %7 = alloca %struct.platform_device_info, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.TYPE_11__* %12)
  store %struct.musb_hdrc_platform_data* %13, %struct.musb_hdrc_platform_data** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %9, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kzalloc(%struct.TYPE_11__* %19, i32 32, i32 %20)
  %22 = bitcast i8* %21 to %struct.da8xx_glue*
  store %struct.da8xx_glue* %22, %struct.da8xx_glue** %6, align 8
  %23 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %24 = icmp ne %struct.da8xx_glue* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %244

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call %struct.clk* @devm_clk_get(%struct.TYPE_11__* %30, i32* null)
  store %struct.clk* %31, %struct.clk** %8, align 8
  %32 = load %struct.clk*, %struct.clk** %8, align 8
  %33 = call i64 @IS_ERR(%struct.clk* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.clk*, %struct.clk** %8, align 8
  %40 = call i32 @PTR_ERR(%struct.clk* %39)
  store i32 %40, i32* %2, align 4
  br label %244

41:                                               ; preds = %28
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call %struct.clk* @devm_phy_get(%struct.TYPE_11__* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %46 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %45, i32 0, i32 4
  store %struct.clk* %44, %struct.clk** %46, align 8
  %47 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %48 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %47, i32 0, i32 4
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  %50 = call i64 @IS_ERR(%struct.clk* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %41
  %53 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %54 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %53, i32 0, i32 4
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.clk* %55)
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %52
  %65 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %66 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %65, i32 0, i32 4
  %67 = load %struct.clk*, %struct.clk** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.clk* %67)
  store i32 %68, i32* %2, align 4
  br label %244

69:                                               ; preds = %41
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %73 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %72, i32 0, i32 3
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %73, align 8
  %74 = load %struct.clk*, %struct.clk** %8, align 8
  %75 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %76 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %75, i32 0, i32 2
  store %struct.clk* %74, %struct.clk** %76, align 8
  %77 = load i32, i32* @CONFIG_OF, align 4
  %78 = call i64 @IS_ENABLED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %69
  %81 = load %struct.device_node*, %struct.device_node** %9, align 8
  %82 = icmp ne %struct.device_node* %81, null
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @devm_kzalloc(%struct.TYPE_11__* %85, i32 24, i32 %86)
  %88 = bitcast i8* %87 to %struct.musb_hdrc_platform_data*
  store %struct.musb_hdrc_platform_data* %88, %struct.musb_hdrc_platform_data** %5, align 8
  %89 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %90 = icmp ne %struct.musb_hdrc_platform_data* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %244

94:                                               ; preds = %83
  %95 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %96 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %95, i32 0, i32 3
  store i32* @da8xx_config, i32** %96, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @musb_get_mode(%struct.TYPE_11__* %98)
  %100 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %101 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @get_vbus_power(%struct.TYPE_11__* %103)
  %105 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %106 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %94, %80, %69
  %108 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %109 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %108, i32 0, i32 0
  store i32* @da8xx_ops, i32** %109, align 8
  %110 = call i32 (...) @usb_phy_generic_register()
  %111 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %112 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %114 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PTR_ERR_OR_ZERO(i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %107
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %2, align 4
  br label %244

124:                                              ; preds = %107
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %127 = call i32 @platform_set_drvdata(%struct.platform_device* %125, %struct.da8xx_glue* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.device_node*, %struct.device_node** %130, align 8
  %132 = load i32, i32* @da8xx_auxdata_lookup, align 4
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @of_platform_populate(%struct.device_node* %131, i32* null, i32 %132, %struct.TYPE_11__* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %124
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %2, align 4
  br label %244

140:                                              ; preds = %124
  %141 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %142 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %143 = call i32 @ARRAY_SIZE(%struct.resource* %142)
  %144 = sext i32 %143 to i64
  %145 = mul i64 16, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memset(%struct.resource* %141, i32 0, i32 %146)
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %155 = getelementptr inbounds %struct.resource, %struct.resource* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %163 = getelementptr inbounds %struct.resource, %struct.resource* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 1
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %171 = getelementptr inbounds %struct.resource, %struct.resource* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %179 = getelementptr inbounds %struct.resource, %struct.resource* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 16
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 1
  %187 = getelementptr inbounds %struct.resource, %struct.resource* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 1
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 1
  %195 = getelementptr inbounds %struct.resource, %struct.resource* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 1
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 1
  %203 = getelementptr inbounds %struct.resource, %struct.resource* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 1
  %211 = getelementptr inbounds %struct.resource, %struct.resource* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 16
  %212 = bitcast %struct.platform_device_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %212, i8* align 8 bitcast (%struct.platform_device_info* @da8xx_dev_info to i8*), i64 32, i1 false)
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 4
  store %struct.TYPE_11__* %214, %struct.TYPE_11__** %215, align 8
  %216 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %217 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 3
  store %struct.resource* %216, %struct.resource** %217, align 8
  %218 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %219 = call i32 @ARRAY_SIZE(%struct.resource* %218)
  %220 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 0
  store i32 %219, i32* %220, align 8
  %221 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %222 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 2
  store %struct.musb_hdrc_platform_data* %221, %struct.musb_hdrc_platform_data** %222, align 8
  %223 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 1
  store i32 24, i32* %223, align 4
  %224 = call i32 @platform_device_register_full(%struct.platform_device_info* %7)
  %225 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %226 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %228 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @PTR_ERR_OR_ZERO(i32 %229)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %140
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = load i32, i32* %10, align 4
  %237 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %235, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %236)
  %238 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %239 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @usb_phy_generic_unregister(i32 %240)
  br label %242

242:                                              ; preds = %233, %140
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %242, %138, %119, %91, %64, %35, %25
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @devm_phy_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @musb_get_mode(%struct.TYPE_11__*) #1

declare dso_local i32 @get_vbus_power(%struct.TYPE_11__*) #1

declare dso_local i32 @usb_phy_generic_register(...) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da8xx_glue*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i32 @usb_phy_generic_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
