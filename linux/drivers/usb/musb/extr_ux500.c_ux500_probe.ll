; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500.c_ux500_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500.c_ux500_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_7__*, %struct.musb_hdrc_platform_data*, %struct.device_node* }
%struct.musb_hdrc_platform_data = type { i32*, i32* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.resource = type { i32, i32, i32, i32 }
%struct.ux500_glue = type { %struct.clk*, %struct.platform_device*, %struct.TYPE_7__* }
%struct.clk = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no pdata or device tree found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to allocate musb device\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@ux500_ops = common dso_local global i32 0, align 4
@ux500_musb_hdrc_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to add platform_data\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to register musb device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ux500_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca [2 x %struct.resource], align 16
  %5 = alloca %struct.musb_hdrc_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.ux500_glue*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.TYPE_7__* %12)
  store %struct.musb_hdrc_platform_data* %13, %struct.musb_hdrc_platform_data** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %21 = icmp ne %struct.musb_hdrc_platform_data* %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call %struct.musb_hdrc_platform_data* @ux500_of_probe(%struct.platform_device* %26, %struct.device_node* %27)
  store %struct.musb_hdrc_platform_data* %28, %struct.musb_hdrc_platform_data** %5, align 8
  %29 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %30 = icmp ne %struct.musb_hdrc_platform_data* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %225

32:                                               ; preds = %25
  %33 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store %struct.musb_hdrc_platform_data* %33, %struct.musb_hdrc_platform_data** %36, align 8
  br label %41

37:                                               ; preds = %22
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %225

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.ux500_glue* @devm_kzalloc(%struct.TYPE_7__* %44, i32 24, i32 %45)
  store %struct.ux500_glue* %46, %struct.ux500_glue** %8, align 8
  %47 = load %struct.ux500_glue*, %struct.ux500_glue** %8, align 8
  %48 = icmp ne %struct.ux500_glue* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %225

50:                                               ; preds = %42
  %51 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %52 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store %struct.platform_device* %52, %struct.platform_device** %7, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %54 = icmp ne %struct.platform_device* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %225

59:                                               ; preds = %50
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call %struct.clk* @devm_clk_get(%struct.TYPE_7__* %61, i32* null)
  store %struct.clk* %62, %struct.clk** %9, align 8
  %63 = load %struct.clk*, %struct.clk** %9, align 8
  %64 = call i64 @IS_ERR(%struct.clk* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(%struct.TYPE_7__* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.clk*, %struct.clk** %9, align 8
  %71 = call i32 @PTR_ERR(%struct.clk* %70)
  store i32 %71, i32* %10, align 4
  br label %222

72:                                               ; preds = %59
  %73 = load %struct.clk*, %struct.clk** %9, align 8
  %74 = call i32 @clk_prepare_enable(%struct.clk* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(%struct.TYPE_7__* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %222

81:                                               ; preds = %72
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32* %89, i32** %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.ux500_glue*, %struct.ux500_glue** %8, align 8
  %103 = getelementptr inbounds %struct.ux500_glue, %struct.ux500_glue* %102, i32 0, i32 2
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %105 = load %struct.ux500_glue*, %struct.ux500_glue** %8, align 8
  %106 = getelementptr inbounds %struct.ux500_glue, %struct.ux500_glue* %105, i32 0, i32 1
  store %struct.platform_device* %104, %struct.platform_device** %106, align 8
  %107 = load %struct.clk*, %struct.clk** %9, align 8
  %108 = load %struct.ux500_glue*, %struct.ux500_glue** %8, align 8
  %109 = getelementptr inbounds %struct.ux500_glue, %struct.ux500_glue* %108, i32 0, i32 0
  store %struct.clk* %107, %struct.clk** %109, align 8
  %110 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %111 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %110, i32 0, i32 1
  store i32* @ux500_ops, i32** %111, align 8
  %112 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %113 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %112, i32 0, i32 0
  store i32* @ux500_musb_hdrc_config, i32** %113, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.ux500_glue*, %struct.ux500_glue** %8, align 8
  %116 = call i32 @platform_set_drvdata(%struct.platform_device* %114, %struct.ux500_glue* %115)
  %117 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %118 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %119 = call i32 @ARRAY_SIZE(%struct.resource* %118)
  %120 = sext i32 %119 to i64
  %121 = mul i64 16, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memset(%struct.resource* %117, i32 0, i32 %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %131 = getelementptr inbounds %struct.resource, %struct.resource* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %139 = getelementptr inbounds %struct.resource, %struct.resource* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %147 = getelementptr inbounds %struct.resource, %struct.resource* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %155 = getelementptr inbounds %struct.resource, %struct.resource* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 16
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 1
  %163 = getelementptr inbounds %struct.resource, %struct.resource* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 1
  %171 = getelementptr inbounds %struct.resource, %struct.resource* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 1
  %179 = getelementptr inbounds %struct.resource, %struct.resource* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 1
  %187 = getelementptr inbounds %struct.resource, %struct.resource* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 16
  %188 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %189 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %190 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %4, i64 0, i64 0
  %191 = call i32 @ARRAY_SIZE(%struct.resource* %190)
  %192 = call i32 @platform_device_add_resources(%struct.platform_device* %188, %struct.resource* %189, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %81
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = call i32 @dev_err(%struct.TYPE_7__* %197, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %219

199:                                              ; preds = %81
  %200 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %201 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %202 = call i32 @platform_device_add_data(%struct.platform_device* %200, %struct.musb_hdrc_platform_data* %201, i32 16)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 @dev_err(%struct.TYPE_7__* %207, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %219

209:                                              ; preds = %199
  %210 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %211 = call i32 @platform_device_add(%struct.platform_device* %210)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @dev_err(%struct.TYPE_7__* %216, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %219

218:                                              ; preds = %209
  store i32 0, i32* %2, align 4
  br label %227

219:                                              ; preds = %214, %205, %195
  %220 = load %struct.clk*, %struct.clk** %9, align 8
  %221 = call i32 @clk_disable_unprepare(%struct.clk* %220)
  br label %222

222:                                              ; preds = %219, %77, %66
  %223 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %224 = call i32 @platform_device_put(%struct.platform_device* %223)
  br label %225

225:                                              ; preds = %222, %55, %49, %37, %31
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %225, %218
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.musb_hdrc_platform_data* @ux500_of_probe(%struct.platform_device*, %struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.ux500_glue* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ux500_glue*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.musb_hdrc_platform_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
