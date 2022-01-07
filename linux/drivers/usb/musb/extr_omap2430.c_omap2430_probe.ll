; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap2430_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap2430_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap2430_glue = type { %struct.TYPE_9__*, i32, %struct.TYPE_9__*, i32, %struct.platform_device* }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_9__*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.resource = type { i32, i32, i32, i32 }
%struct.musb_hdrc_platform_data = type { i32*, %struct.musb_hdrc_config*, %struct.omap_musb_board_data*, i32, i32 }
%struct.musb_hdrc_config = type { i32, i32, i32 }
%struct.omap_musb_board_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to allocate musb device\0A\00", align 1
@omap2430_dmamask = common dso_local global i32 0, align 4
@MUSB_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"interface-type\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"num-eps\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ram-bits\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"multipoint\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ctrl-module\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to get control device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@omap2430_ops = common dso_local global i32 0, align 4
@_glue = common dso_local global %struct.omap2430_glue* null, align 8
@omap_musb_mailbox_work = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"failed to add platform_data\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"failed to register musb device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap2430_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2430_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca [3 x %struct.resource], align 16
  %5 = alloca %struct.musb_hdrc_platform_data*, align 8
  %6 = alloca %struct.omap_musb_board_data*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.omap2430_glue*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.musb_hdrc_config*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.platform_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.TYPE_9__* %16)
  store %struct.musb_hdrc_platform_data* %17, %struct.musb_hdrc_platform_data** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %9, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  %24 = load %struct.device_node*, %struct.device_node** %9, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %318

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @devm_kzalloc(%struct.TYPE_9__* %31, i32 40, i32 %32)
  %34 = bitcast i8* %33 to %struct.omap2430_glue*
  store %struct.omap2430_glue* %34, %struct.omap2430_glue** %8, align 8
  %35 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %36 = icmp ne %struct.omap2430_glue* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %316

38:                                               ; preds = %29
  %39 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %40 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %39)
  store %struct.platform_device* %40, %struct.platform_device** %7, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %42 = icmp ne %struct.platform_device* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_9__* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %316

47:                                               ; preds = %38
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32* @omap2430_dmamask, i32** %55, align 8
  %56 = load i32, i32* @omap2430_dmamask, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %63 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %62, i32 0, i32 0
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %65 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %66 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %65, i32 0, i32 4
  store %struct.platform_device* %64, %struct.platform_device** %66, align 8
  %67 = load i32, i32* @MUSB_UNKNOWN, align 4
  %68 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %69 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.TYPE_9__* @ERR_PTR(i32 %71)
  %73 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %74 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %73, i32 0, i32 2
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @devm_kzalloc(%struct.TYPE_9__* %76, i32 32, i32 %77)
  %79 = bitcast i8* %78 to %struct.musb_hdrc_platform_data*
  store %struct.musb_hdrc_platform_data* %79, %struct.musb_hdrc_platform_data** %5, align 8
  %80 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %81 = icmp ne %struct.musb_hdrc_platform_data* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %47
  br label %313

83:                                               ; preds = %47
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @devm_kzalloc(%struct.TYPE_9__* %85, i32 4, i32 %86)
  %88 = bitcast i8* %87 to %struct.omap_musb_board_data*
  store %struct.omap_musb_board_data* %88, %struct.omap_musb_board_data** %6, align 8
  %89 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %6, align 8
  %90 = icmp ne %struct.omap_musb_board_data* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %313

92:                                               ; preds = %83
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @devm_kzalloc(%struct.TYPE_9__* %94, i32 12, i32 %95)
  %97 = bitcast i8* %96 to %struct.musb_hdrc_config*
  store %struct.musb_hdrc_config* %97, %struct.musb_hdrc_config** %10, align 8
  %98 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %99 = icmp ne %struct.musb_hdrc_config* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  br label %313

101:                                              ; preds = %92
  %102 = load %struct.device_node*, %struct.device_node** %9, align 8
  %103 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %104 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %103, i32 0, i32 4
  %105 = call i32 @of_property_read_u32(%struct.device_node* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %104)
  %106 = load %struct.device_node*, %struct.device_node** %9, align 8
  %107 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %6, align 8
  %108 = getelementptr inbounds %struct.omap_musb_board_data, %struct.omap_musb_board_data* %107, i32 0, i32 0
  %109 = call i32 @of_property_read_u32(%struct.device_node* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %108)
  %110 = load %struct.device_node*, %struct.device_node** %9, align 8
  %111 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %112 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %111, i32 0, i32 2
  %113 = call i32 @of_property_read_u32(%struct.device_node* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %112)
  %114 = load %struct.device_node*, %struct.device_node** %9, align 8
  %115 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %116 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %115, i32 0, i32 1
  %117 = call i32 @of_property_read_u32(%struct.device_node* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %116)
  %118 = load %struct.device_node*, %struct.device_node** %9, align 8
  %119 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %120 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %119, i32 0, i32 3
  %121 = call i32 @of_property_read_u32(%struct.device_node* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %120)
  %122 = load %struct.device_node*, %struct.device_node** %9, align 8
  %123 = call i32 @of_property_read_u32(%struct.device_node* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %14)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %101
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %131 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %126, %101
  %133 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %6, align 8
  %134 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %135 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %134, i32 0, i32 2
  store %struct.omap_musb_board_data* %133, %struct.omap_musb_board_data** %135, align 8
  %136 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %137 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %138 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %137, i32 0, i32 1
  store %struct.musb_hdrc_config* %136, %struct.musb_hdrc_config** %138, align 8
  %139 = load %struct.device_node*, %struct.device_node** %9, align 8
  %140 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store %struct.device_node* %140, %struct.device_node** %11, align 8
  %141 = load %struct.device_node*, %struct.device_node** %11, align 8
  %142 = icmp ne %struct.device_node* %141, null
  br i1 %142, label %143, label %159

143:                                              ; preds = %132
  %144 = load %struct.device_node*, %struct.device_node** %11, align 8
  %145 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %144)
  store %struct.platform_device* %145, %struct.platform_device** %12, align 8
  %146 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %147 = icmp ne %struct.platform_device* %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_err(%struct.TYPE_9__* %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %13, align 4
  br label %313

154:                                              ; preds = %143
  %155 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %158 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %157, i32 0, i32 2
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %158, align 8
  br label %159

159:                                              ; preds = %154, %132
  %160 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %161 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %160, i32 0, i32 0
  store i32* @omap2430_ops, i32** %161, align 8
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %164 = call i32 @platform_set_drvdata(%struct.platform_device* %162, %struct.omap2430_glue* %163)
  %165 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  store %struct.omap2430_glue* %165, %struct.omap2430_glue** @_glue, align 8
  %166 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %167 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %166, i32 0, i32 1
  %168 = load i32, i32* @omap_musb_mailbox_work, align 4
  %169 = call i32 @INIT_WORK(i32* %167, i32 %168)
  %170 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %171 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %172 = call i32 @ARRAY_SIZE(%struct.resource* %171)
  %173 = sext i32 %172 to i64
  %174 = mul i64 16, %173
  %175 = trunc i64 %174 to i32
  %176 = call i32 @memset(%struct.resource* %170, i32 0, i32 %175)
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %184 = getelementptr inbounds %struct.resource, %struct.resource* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %192 = getelementptr inbounds %struct.resource, %struct.resource* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 1
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %200 = getelementptr inbounds %struct.resource, %struct.resource* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 1
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %208 = getelementptr inbounds %struct.resource, %struct.resource* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 16
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i64 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %216 = getelementptr inbounds %struct.resource, %struct.resource* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %224 = getelementptr inbounds %struct.resource, %struct.resource* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 1
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %232 = getelementptr inbounds %struct.resource, %struct.resource* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 1
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i64 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %240 = getelementptr inbounds %struct.resource, %struct.resource* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 16
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 1
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i64 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %248 = getelementptr inbounds %struct.resource, %struct.resource* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 1
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 2
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %256 = getelementptr inbounds %struct.resource, %struct.resource* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 1
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i64 2
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %264 = getelementptr inbounds %struct.resource, %struct.resource* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %266 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %265, i32 0, i32 1
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i64 2
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %272 = getelementptr inbounds %struct.resource, %struct.resource* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 16
  %273 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %274 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %275 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %276 = call i32 @ARRAY_SIZE(%struct.resource* %275)
  %277 = call i32 @platform_device_add_resources(%struct.platform_device* %273, %struct.resource* %274, i32 %276)
  store i32 %277, i32* %13, align 4
  %278 = load i32, i32* %13, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %159
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = call i32 @dev_err(%struct.TYPE_9__* %282, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %313

284:                                              ; preds = %159
  %285 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %286 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %287 = call i32 @platform_device_add_data(%struct.platform_device* %285, %struct.musb_hdrc_platform_data* %286, i32 32)
  store i32 %287, i32* %13, align 4
  %288 = load i32, i32* %13, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %292 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %291, i32 0, i32 0
  %293 = call i32 @dev_err(%struct.TYPE_9__* %292, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %313

294:                                              ; preds = %284
  %295 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %296 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %295, i32 0, i32 0
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %296, align 8
  %298 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %297)
  %299 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %300 = call i32 @platform_device_add(%struct.platform_device* %299)
  store i32 %300, i32* %13, align 4
  %301 = load i32, i32* %13, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %294
  %304 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %305 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %304, i32 0, i32 0
  %306 = call i32 @dev_err(%struct.TYPE_9__* %305, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %308

307:                                              ; preds = %294
  store i32 0, i32* %2, align 4
  br label %318

308:                                              ; preds = %303
  %309 = load %struct.omap2430_glue*, %struct.omap2430_glue** %8, align 8
  %310 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %309, i32 0, i32 0
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %310, align 8
  %312 = call i32 @pm_runtime_disable(%struct.TYPE_9__* %311)
  br label %313

313:                                              ; preds = %308, %290, %280, %148, %100, %91, %82
  %314 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %315 = call i32 @platform_device_put(%struct.platform_device* %314)
  br label %316

316:                                              ; preds = %313, %43, %37
  %317 = load i32, i32* %13, align 4
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %316, %307, %26
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.TYPE_9__*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_9__* @ERR_PTR(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap2430_glue*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.musb_hdrc_platform_data*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
