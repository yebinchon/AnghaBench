; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_imx_rproc.c_imx_rproc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_imx_rproc.c_imx_rproc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i8* }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx_rproc = type { %struct.regmap*, %struct.device*, %struct.imx_rproc_dcfg*, %struct.regmap*, %struct.rproc* }
%struct.imx_rproc_dcfg = type { i32 }
%struct.regmap = type { i32 }
%struct.rproc = type { %struct.device, %struct.imx_rproc* }

@.str = private unnamed_addr constant [10 x i8] c"imx-rproc\00", align 1
@__const.imx_rproc_probe.config = private unnamed_addr constant %struct.regmap_config { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to find syscon\0A\00", align 1
@imx_rproc_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed on imx_rproc_addr_init\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"rproc_add failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_rproc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_rproc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.imx_rproc*, align 8
  %7 = alloca %struct.rproc*, align 8
  %8 = alloca %struct.regmap_config, align 8
  %9 = alloca %struct.imx_rproc_dcfg*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = bitcast %struct.regmap_config* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.regmap_config* @__const.imx_rproc_probe.config to i8*), i64 8, i1 false)
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regmap* %19, %struct.regmap** %10, align 8
  %20 = load %struct.regmap*, %struct.regmap** %10, align 8
  %21 = call i64 @IS_ERR(%struct.regmap* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.regmap*, %struct.regmap** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.regmap* %26)
  store i32 %27, i32* %2, align 4
  br label %120

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.regmap*, %struct.regmap** %10, align 8
  %31 = call i32 @regmap_attach_dev(%struct.device* %29, %struct.regmap* %30, %struct.regmap_config* %8)
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call %struct.rproc* @rproc_alloc(%struct.device* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @imx_rproc_ops, i32* null, i32 40)
  store %struct.rproc* %33, %struct.rproc** %7, align 8
  %34 = load %struct.rproc*, %struct.rproc** %7, align 8
  %35 = icmp ne %struct.rproc* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %120

39:                                               ; preds = %28
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call %struct.imx_rproc_dcfg* @of_device_get_match_data(%struct.device* %40)
  store %struct.imx_rproc_dcfg* %41, %struct.imx_rproc_dcfg** %9, align 8
  %42 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %9, align 8
  %43 = icmp ne %struct.imx_rproc_dcfg* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %116

47:                                               ; preds = %39
  %48 = load %struct.rproc*, %struct.rproc** %7, align 8
  %49 = getelementptr inbounds %struct.rproc, %struct.rproc* %48, i32 0, i32 1
  %50 = load %struct.imx_rproc*, %struct.imx_rproc** %49, align 8
  store %struct.imx_rproc* %50, %struct.imx_rproc** %6, align 8
  %51 = load %struct.rproc*, %struct.rproc** %7, align 8
  %52 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %53 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %52, i32 0, i32 4
  store %struct.rproc* %51, %struct.rproc** %53, align 8
  %54 = load %struct.regmap*, %struct.regmap** %10, align 8
  %55 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %56 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %55, i32 0, i32 3
  store %struct.regmap* %54, %struct.regmap** %56, align 8
  %57 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %9, align 8
  %58 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %59 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %58, i32 0, i32 2
  store %struct.imx_rproc_dcfg* %57, %struct.imx_rproc_dcfg** %59, align 8
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %62 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %61, i32 0, i32 1
  store %struct.device* %60, %struct.device** %62, align 8
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.rproc*, %struct.rproc** %7, align 8
  %65 = call i32 @dev_set_drvdata(%struct.device* %63, %struct.rproc* %64)
  %66 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i32 @imx_rproc_addr_init(%struct.imx_rproc* %66, %struct.platform_device* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %47
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %116

74:                                               ; preds = %47
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call %struct.regmap* @devm_clk_get(%struct.device* %75, i32* null)
  %77 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %78 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %77, i32 0, i32 0
  store %struct.regmap* %76, %struct.regmap** %78, align 8
  %79 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %80 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %79, i32 0, i32 0
  %81 = load %struct.regmap*, %struct.regmap** %80, align 8
  %82 = call i64 @IS_ERR(%struct.regmap* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %88 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %87, i32 0, i32 0
  %89 = load %struct.regmap*, %struct.regmap** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.regmap* %89)
  store i32 %90, i32* %11, align 4
  br label %116

91:                                               ; preds = %74
  %92 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %93 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %92, i32 0, i32 0
  %94 = load %struct.regmap*, %struct.regmap** %93, align 8
  %95 = call i32 @clk_prepare_enable(%struct.regmap* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.rproc*, %struct.rproc** %7, align 8
  %100 = getelementptr inbounds %struct.rproc, %struct.rproc* %99, i32 0, i32 0
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %116

102:                                              ; preds = %91
  %103 = load %struct.rproc*, %struct.rproc** %7, align 8
  %104 = call i32 @rproc_add(%struct.rproc* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %111

110:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %120

111:                                              ; preds = %107
  %112 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %113 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %112, i32 0, i32 0
  %114 = load %struct.regmap*, %struct.regmap** %113, align 8
  %115 = call i32 @clk_disable_unprepare(%struct.regmap* %114)
  br label %116

116:                                              ; preds = %111, %98, %84, %71, %44
  %117 = load %struct.rproc*, %struct.rproc** %7, align 8
  %118 = call i32 @rproc_free(%struct.rproc* %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %116, %110, %36, %23
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local i32 @regmap_attach_dev(%struct.device*, %struct.regmap*, %struct.regmap_config*) #2

declare dso_local %struct.rproc* @rproc_alloc(%struct.device*, i8*, i32*, i32*, i32) #2

declare dso_local %struct.imx_rproc_dcfg* @of_device_get_match_data(%struct.device*) #2

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.rproc*) #2

declare dso_local i32 @imx_rproc_addr_init(%struct.imx_rproc*, %struct.platform_device*) #2

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i32*) #2

declare dso_local i32 @clk_prepare_enable(%struct.regmap*) #2

declare dso_local i32 @rproc_add(%struct.rproc*) #2

declare dso_local i32 @clk_disable_unprepare(%struct.regmap*) #2

declare dso_local i32 @rproc_free(%struct.rproc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
