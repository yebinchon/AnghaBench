; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_davinci.c_davinci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_davinci.c_davinci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device_info = type { i32, i32, %struct.musb_hdrc_platform_data*, %struct.resource*, i32* }
%struct.musb_hdrc_platform_data = type { i32* }
%struct.resource = type { i32, i32, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.davinci_glue = type { %struct.platform_device*, %struct.platform_device*, i32* }
%struct.clk = type { i32, %struct.TYPE_2__* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@davinci_ops = common dso_local global i32 0, align 4
@davinci_dev_info = common dso_local global %struct.platform_device_info zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to register musb device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca [3 x %struct.resource], align 16
  %5 = alloca %struct.musb_hdrc_platform_data*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.davinci_glue*, align 8
  %8 = alloca %struct.platform_device_info, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(i32* %12)
  store %struct.musb_hdrc_platform_data* %13, %struct.musb_hdrc_platform_data** %5, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.davinci_glue* @devm_kzalloc(i32* %17, i32 24, i32 %18)
  store %struct.davinci_glue* %19, %struct.davinci_glue** %7, align 8
  %20 = load %struct.davinci_glue*, %struct.davinci_glue** %7, align 8
  %21 = icmp ne %struct.davinci_glue* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %197

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.platform_device* @devm_clk_get(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = bitcast %struct.platform_device* %26 to %struct.clk*
  store %struct.clk* %27, %struct.clk** %9, align 8
  %28 = load %struct.clk*, %struct.clk** %9, align 8
  %29 = bitcast %struct.clk* %28 to %struct.platform_device*
  %30 = call i64 @IS_ERR(%struct.platform_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.clk*, %struct.clk** %9, align 8
  %37 = bitcast %struct.clk* %36 to %struct.platform_device*
  %38 = call i32 @PTR_ERR(%struct.platform_device* %37)
  store i32 %38, i32* %10, align 4
  br label %197

39:                                               ; preds = %23
  %40 = load %struct.clk*, %struct.clk** %9, align 8
  %41 = bitcast %struct.clk* %40 to %struct.platform_device*
  %42 = call i32 @clk_enable(%struct.platform_device* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %197

49:                                               ; preds = %39
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.davinci_glue*, %struct.davinci_glue** %7, align 8
  %53 = getelementptr inbounds %struct.davinci_glue, %struct.davinci_glue* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.clk*, %struct.clk** %9, align 8
  %55 = bitcast %struct.clk* %54 to %struct.platform_device*
  %56 = load %struct.davinci_glue*, %struct.davinci_glue** %7, align 8
  %57 = getelementptr inbounds %struct.davinci_glue, %struct.davinci_glue* %56, i32 0, i32 1
  store %struct.platform_device* %55, %struct.platform_device** %57, align 8
  %58 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %59 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %58, i32 0, i32 0
  store i32* @davinci_ops, i32** %59, align 8
  %60 = call i32 (...) @usb_phy_generic_register()
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.davinci_glue*, %struct.davinci_glue** %7, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.davinci_glue* %62)
  %64 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %65 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(%struct.resource* %65)
  %67 = sext i32 %66 to i64
  %68 = mul i64 16, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(%struct.resource* %64, i32 0, i32 %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 16
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 16
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %142 = getelementptr inbounds %struct.resource, %struct.resource* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %150 = getelementptr inbounds %struct.resource, %struct.resource* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %158 = getelementptr inbounds %struct.resource, %struct.resource* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 2
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %166 = getelementptr inbounds %struct.resource, %struct.resource* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 16
  %167 = bitcast %struct.platform_device_info* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %167, i8* align 8 bitcast (%struct.platform_device_info* @davinci_dev_info to i8*), i64 32, i1 false)
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 4
  store i32* %169, i32** %170, align 8
  %171 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %172 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 3
  store %struct.resource* %171, %struct.resource** %172, align 8
  %173 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %174 = call i32 @ARRAY_SIZE(%struct.resource* %173)
  %175 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 0
  store i32 %174, i32* %175, align 8
  %176 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %177 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 2
  store %struct.musb_hdrc_platform_data* %176, %struct.musb_hdrc_platform_data** %177, align 8
  %178 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 1
  store i32 8, i32* %178, align 4
  %179 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %8)
  store %struct.platform_device* %179, %struct.platform_device** %6, align 8
  %180 = load %struct.davinci_glue*, %struct.davinci_glue** %7, align 8
  %181 = getelementptr inbounds %struct.davinci_glue, %struct.davinci_glue* %180, i32 0, i32 0
  store %struct.platform_device* %179, %struct.platform_device** %181, align 8
  %182 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %183 = call i64 @IS_ERR(%struct.platform_device* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %49
  %186 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %187 = call i32 @PTR_ERR(%struct.platform_device* %186)
  store i32 %187, i32* %10, align 4
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = load i32, i32* %10, align 4
  %191 = call i32 (i32*, i8*, ...) @dev_err(i32* %189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  br label %193

192:                                              ; preds = %49
  store i32 0, i32* %2, align 4
  br label %199

193:                                              ; preds = %185
  %194 = load %struct.clk*, %struct.clk** %9, align 8
  %195 = bitcast %struct.clk* %194 to %struct.platform_device*
  %196 = call i32 @clk_disable(%struct.platform_device* %195)
  br label %197

197:                                              ; preds = %193, %45, %32, %22
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %192
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.davinci_glue* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.platform_device* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @clk_enable(%struct.platform_device*) #1

declare dso_local i32 @usb_phy_generic_register(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.davinci_glue*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i32 @clk_disable(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
