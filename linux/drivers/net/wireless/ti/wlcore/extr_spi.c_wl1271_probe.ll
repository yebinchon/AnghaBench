; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wl1271_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wl1271_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.wl12xx_spi_glue = type { %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.wlcore_platdev_data = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.resource = type { i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@spi_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't allocate glue\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vwlan\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"can't get regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"can't get device tree parameters (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"spi_setup failed\0A\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"can't allocate platform_device\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"can't add resources\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"can't add platform data\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"can't register platform device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wl1271_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.wl12xx_spi_glue*, align 8
  %5 = alloca %struct.wlcore_platdev_data*, align 8
  %6 = alloca [1 x %struct.resource], align 16
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  %12 = bitcast i8* %11 to %struct.wlcore_platdev_data*
  store %struct.wlcore_platdev_data* %12, %struct.wlcore_platdev_data** %5, align 8
  %13 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %14 = icmp ne %struct.wlcore_platdev_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %191

18:                                               ; preds = %1
  %19 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %20 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %19, i32 0, i32 1
  store i32* @spi_ops, i32** %20, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @devm_kzalloc(i32* %22, i32 24, i32 %23)
  %25 = bitcast i8* %24 to %struct.wl12xx_spi_glue*
  store %struct.wl12xx_spi_glue* %25, %struct.wl12xx_spi_glue** %4, align 8
  %26 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %27 = icmp ne %struct.wl12xx_spi_glue* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 2
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %191

34:                                               ; preds = %18
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 2
  %37 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %38 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %41 = call i32 @spi_set_drvdata(%struct.spi_device* %39, %struct.wl12xx_spi_glue* %40)
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  store i32 32, i32* %43, align 4
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 2
  %46 = call i32 @devm_regulator_get(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %48 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %50 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %34
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %191

59:                                               ; preds = %34
  %60 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %61 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %67 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %71 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %191

74:                                               ; preds = %59
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %77 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %78 = call i32 @wlcore_probe_of(%struct.spi_device* %75, %struct.wl12xx_spi_glue* %76, %struct.wlcore_platdev_data* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %83 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %191

88:                                               ; preds = %74
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = call i32 @spi_setup(%struct.spi_device* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %95 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %191

99:                                               ; preds = %88
  %100 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %101 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %106 = call %struct.TYPE_10__* @platform_device_alloc(i32 %104, i32 %105)
  %107 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %108 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %107, i32 0, i32 0
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %108, align 8
  %109 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %110 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %99
  %114 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %115 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %191

120:                                              ; preds = %99
  %121 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %122 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %121, i32 0, i32 2
  %123 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %124 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32* %122, i32** %127, align 8
  %128 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %129 = call i32 @memset(%struct.resource* %128, i32 0, i32 24)
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 16
  %135 = load i32, i32* @IORESOURCE_IRQ, align 4
  %136 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %137 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @irq_get_trigger_type(i32 %138)
  %140 = or i32 %135, %139
  %141 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %142 = getelementptr inbounds %struct.resource, %struct.resource* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 16
  %143 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %144, align 8
  %145 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %146 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %149 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %150 = call i32 @ARRAY_SIZE(%struct.resource* %149)
  %151 = call i32 @platform_device_add_resources(%struct.TYPE_10__* %147, %struct.resource* %148, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %120
  %155 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %156 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %185

159:                                              ; preds = %120
  %160 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %161 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %160, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %164 = call i32 @platform_device_add_data(%struct.TYPE_10__* %162, %struct.wlcore_platdev_data* %163, i32 16)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %169 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %185

172:                                              ; preds = %159
  %173 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %174 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = call i32 @platform_device_add(%struct.TYPE_10__* %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %181 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 (i32*, i8*, ...) @dev_err(i32* %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %185

184:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %191

185:                                              ; preds = %179, %167, %154
  %186 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %187 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %186, i32 0, i32 0
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = call i32 @platform_device_put(%struct.TYPE_10__* %188)
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %185, %184, %113, %93, %81, %65, %56, %28, %15
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.wl12xx_spi_glue*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @wlcore_probe_of(%struct.spi_device*, %struct.wl12xx_spi_glue*, %struct.wlcore_platdev_data*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.TYPE_10__* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.TYPE_10__*, %struct.resource*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @platform_device_add_data(%struct.TYPE_10__*, %struct.wlcore_platdev_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
