; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-imx7.c_imx7_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-imx7.c_imx7_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i8* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.imx7_src = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }
%struct.imx7_src_variant = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1
@__const.imx7_reset_probe.config = private unnamed_addr constant %struct.regmap_config { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0) }, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to get imx7-src regmap\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx7_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx7_src*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap_config, align 8
  %7 = alloca %struct.imx7_src_variant*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = bitcast %struct.regmap_config* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.regmap_config* @__const.imx7_reset_probe.config to i8*), i64 8, i1 false)
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.imx7_src_variant* @of_device_get_match_data(%struct.device* %11)
  store %struct.imx7_src_variant* %12, %struct.imx7_src_variant** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.imx7_src* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.imx7_src* %15, %struct.imx7_src** %4, align 8
  %16 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %17 = icmp ne %struct.imx7_src* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load %struct.imx7_src_variant*, %struct.imx7_src_variant** %7, align 8
  %23 = getelementptr inbounds %struct.imx7_src_variant, %struct.imx7_src_variant* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %26 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @syscon_node_to_regmap(i32 %29)
  %31 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %32 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %34 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %21
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %42 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %76

45:                                               ; preds = %21
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %48 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @regmap_attach_dev(%struct.device* %46, i32 %49, %struct.regmap_config* %6)
  %51 = load i32, i32* @THIS_MODULE, align 4
  %52 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %53 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load %struct.imx7_src_variant*, %struct.imx7_src_variant** %7, align 8
  %56 = getelementptr inbounds %struct.imx7_src_variant, %struct.imx7_src_variant* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %59 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.imx7_src_variant*, %struct.imx7_src_variant** %7, align 8
  %62 = getelementptr inbounds %struct.imx7_src_variant, %struct.imx7_src_variant* %61, i32 0, i32 0
  %63 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %64 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32* %62, i32** %65, align 8
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %70 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load %struct.imx7_src*, %struct.imx7_src** %4, align 8
  %74 = getelementptr inbounds %struct.imx7_src, %struct.imx7_src* %73, i32 0, i32 0
  %75 = call i32 @devm_reset_controller_register(%struct.device* %72, %struct.TYPE_2__* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %45, %38, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.imx7_src_variant* @of_device_get_match_data(%struct.device*) #2

declare dso_local %struct.imx7_src* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @syscon_node_to_regmap(i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @regmap_attach_dev(%struct.device*, i32, %struct.regmap_config*) #2

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_2__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
