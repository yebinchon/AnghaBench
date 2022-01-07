; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_sc27xx-efuse.c_sc27xx_efuse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_sc27xx-efuse.c_sc27xx_efuse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.nvmem_config = type { i32, i32, i32, i8*, i32, %struct.TYPE_4__*, %struct.sc27xx_efuse*, i32 }
%struct.sc27xx_efuse = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.nvmem_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to get efuse regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get efuse base address\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to get hwspinlock id\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to request hwspinlock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"sc27xx-efuse\00", align 1
@SC27XX_EFUSE_BLOCK_MAX = common dso_local global i32 0, align 4
@SC27XX_EFUSE_BLOCK_WIDTH = common dso_local global i32 0, align 4
@sc27xx_efuse_read = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register nvmem config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sc27xx_efuse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_efuse_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nvmem_config, align 8
  %6 = alloca %struct.nvmem_device*, align 8
  %7 = alloca %struct.sc27xx_efuse*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = bitcast %struct.nvmem_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 56, i1 false)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sc27xx_efuse* @devm_kzalloc(%struct.TYPE_4__* %15, i32 32, i32 %16)
  store %struct.sc27xx_efuse* %17, %struct.sc27xx_efuse** %7, align 8
  %18 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %19 = icmp ne %struct.sc27xx_efuse* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %121

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_get_regmap(i32 %27, i32* null)
  %29 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %30 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %32 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %121

41:                                               ; preds = %23
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %44 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %43, i32 0, i32 3
  %45 = call i32 @of_property_read_u32(%struct.device_node* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.TYPE_4__* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %121

53:                                               ; preds = %41
  %54 = load %struct.device_node*, %struct.device_node** %4, align 8
  %55 = call i32 @of_hwspin_lock_get_id(%struct.device_node* %54, i32 0)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_4__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %121

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @hwspin_lock_request_specific(i32 %64)
  %66 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %67 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %69 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %63
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(%struct.TYPE_4__* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @ENXIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %121

78:                                               ; preds = %63
  %79 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %80 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %79, i32 0, i32 2
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %85 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %84, i32 0, i32 1
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %88 = call i32 @platform_set_drvdata(%struct.platform_device* %86, %struct.sc27xx_efuse* %87)
  %89 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %5, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %5, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %5, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* @SC27XX_EFUSE_BLOCK_MAX, align 4
  %94 = load i32, i32* @SC27XX_EFUSE_BLOCK_WIDTH, align 4
  %95 = mul nsw i32 %93, %94
  %96 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %5, i32 0, i32 4
  store i32 %95, i32* %96, align 8
  %97 = load i32, i32* @sc27xx_efuse_read, align 4
  %98 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %5, i32 0, i32 7
  store i32 %97, i32* %98, align 8
  %99 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %100 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %5, i32 0, i32 6
  store %struct.sc27xx_efuse* %99, %struct.sc27xx_efuse** %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %5, i32 0, i32 5
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call %struct.nvmem_device* @devm_nvmem_register(%struct.TYPE_4__* %105, %struct.nvmem_config* %5)
  store %struct.nvmem_device* %106, %struct.nvmem_device** %6, align 8
  %107 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %108 = call i64 @IS_ERR(%struct.nvmem_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %78
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @dev_err(%struct.TYPE_4__* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %7, align 8
  %115 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @hwspin_lock_free(i32 %116)
  %118 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %119 = call i32 @PTR_ERR(%struct.nvmem_device* %118)
  store i32 %119, i32* %2, align 4
  br label %121

120:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %110, %72, %58, %48, %35, %20
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sc27xx_efuse* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @of_hwspin_lock_get_id(%struct.device_node*, i32) #2

declare dso_local i32 @hwspin_lock_request_specific(i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sc27xx_efuse*) #2

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.TYPE_4__*, %struct.nvmem_config*) #2

declare dso_local i64 @IS_ERR(%struct.nvmem_device*) #2

declare dso_local i32 @hwspin_lock_free(i32) #2

declare dso_local i32 @PTR_ERR(%struct.nvmem_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
