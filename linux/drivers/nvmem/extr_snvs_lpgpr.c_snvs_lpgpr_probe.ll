; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_snvs_lpgpr.c_snvs_lpgpr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_snvs_lpgpr.c_snvs_lpgpr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.snvs_lpgpr_priv = type { %struct.nvmem_config, %struct.snvs_lpgpr_cfg*, i32 }
%struct.nvmem_config = type { i32, i32, i32, i32, i32, i32, %struct.device*, i32, %struct.snvs_lpgpr_priv* }
%struct.snvs_lpgpr_cfg = type { i32 }
%struct.nvmem_device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@snvs_lpgpr_read = common dso_local global i32 0, align 4
@snvs_lpgpr_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snvs_lpgpr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_lpgpr_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.snvs_lpgpr_priv*, align 8
  %8 = alloca %struct.nvmem_config*, align 8
  %9 = alloca %struct.nvmem_device*, align 8
  %10 = alloca %struct.snvs_lpgpr_cfg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %102

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.snvs_lpgpr_priv* @devm_kzalloc(%struct.device* %22, i32 64, i32 %23)
  store %struct.snvs_lpgpr_priv* %24, %struct.snvs_lpgpr_priv** %7, align 8
  %25 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %7, align 8
  %26 = icmp ne %struct.snvs_lpgpr_priv* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %102

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call %struct.snvs_lpgpr_cfg* @of_device_get_match_data(%struct.device* %31)
  store %struct.snvs_lpgpr_cfg* %32, %struct.snvs_lpgpr_cfg** %10, align 8
  %33 = load %struct.snvs_lpgpr_cfg*, %struct.snvs_lpgpr_cfg** %10, align 8
  %34 = icmp ne %struct.snvs_lpgpr_cfg* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %102

38:                                               ; preds = %30
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call %struct.device_node* @of_get_parent(%struct.device_node* %39)
  store %struct.device_node* %40, %struct.device_node** %6, align 8
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %102

46:                                               ; preds = %38
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @syscon_node_to_regmap(%struct.device_node* %47)
  %49 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %7, align 8
  %50 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = call i32 @of_node_put(%struct.device_node* %51)
  %53 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %7, align 8
  %54 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %7, align 8
  %60 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %102

63:                                               ; preds = %46
  %64 = load %struct.snvs_lpgpr_cfg*, %struct.snvs_lpgpr_cfg** %10, align 8
  %65 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %7, align 8
  %66 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %65, i32 0, i32 1
  store %struct.snvs_lpgpr_cfg* %64, %struct.snvs_lpgpr_cfg** %66, align 8
  %67 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %7, align 8
  %68 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %67, i32 0, i32 0
  store %struct.nvmem_config* %68, %struct.nvmem_config** %8, align 8
  %69 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %7, align 8
  %70 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %71 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %70, i32 0, i32 8
  store %struct.snvs_lpgpr_priv* %69, %struct.snvs_lpgpr_priv** %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_name(%struct.device* %72)
  %74 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %75 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %78 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %77, i32 0, i32 6
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %80 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %79, i32 0, i32 0
  store i32 4, i32* %80, align 8
  %81 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %82 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %81, i32 0, i32 1
  store i32 4, i32* %82, align 4
  %83 = load %struct.snvs_lpgpr_cfg*, %struct.snvs_lpgpr_cfg** %10, align 8
  %84 = getelementptr inbounds %struct.snvs_lpgpr_cfg, %struct.snvs_lpgpr_cfg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %87 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @THIS_MODULE, align 4
  %89 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %90 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @snvs_lpgpr_read, align 4
  %92 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %93 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @snvs_lpgpr_write, align 4
  %95 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %96 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.nvmem_config*, %struct.nvmem_config** %8, align 8
  %99 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %97, %struct.nvmem_config* %98)
  store %struct.nvmem_device* %99, %struct.nvmem_device** %9, align 8
  %100 = load %struct.nvmem_device*, %struct.nvmem_device** %9, align 8
  %101 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %63, %58, %43, %35, %27, %18
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.snvs_lpgpr_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.snvs_lpgpr_cfg* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.nvmem_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
