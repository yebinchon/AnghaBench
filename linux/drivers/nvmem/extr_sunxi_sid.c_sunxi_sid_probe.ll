; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_sunxi_sid.c_sunxi_sid_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_sunxi_sid.c_sunxi_sid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.nvmem_config = type { i8*, i32, i32, i32, i32, i32 (%struct.sunxi_sid*, i32, i8*, i32)*, %struct.sunxi_sid*, %struct.device* }
%struct.sunxi_sid = type { %struct.nvmem_device*, i32 }
%struct.nvmem_device = type { i32 }
%struct.sunxi_sid_cfg = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sunxi-sid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_sid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_sid_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.nvmem_config*, align 8
  %7 = alloca %struct.nvmem_device*, align 8
  %8 = alloca %struct.sunxi_sid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sunxi_sid_cfg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kzalloc(%struct.device* %14, i32 16, i32 %15)
  %17 = bitcast i8* %16 to %struct.sunxi_sid*
  store %struct.sunxi_sid* %17, %struct.sunxi_sid** %8, align 8
  %18 = load %struct.sunxi_sid*, %struct.sunxi_sid** %8, align 8
  %19 = icmp ne %struct.sunxi_sid* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %133

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call %struct.sunxi_sid_cfg* @of_device_get_match_data(%struct.device* %24)
  store %struct.sunxi_sid_cfg* %25, %struct.sunxi_sid_cfg** %11, align 8
  %26 = load %struct.sunxi_sid_cfg*, %struct.sunxi_sid_cfg** %11, align 8
  %27 = icmp ne %struct.sunxi_sid_cfg* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %133

31:                                               ; preds = %23
  %32 = load %struct.sunxi_sid_cfg*, %struct.sunxi_sid_cfg** %11, align 8
  %33 = getelementptr inbounds %struct.sunxi_sid_cfg, %struct.sunxi_sid_cfg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sunxi_sid*, %struct.sunxi_sid** %8, align 8
  %36 = getelementptr inbounds %struct.sunxi_sid, %struct.sunxi_sid* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %5, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = call %struct.nvmem_device* @devm_ioremap_resource(%struct.device* %40, %struct.resource* %41)
  %43 = load %struct.sunxi_sid*, %struct.sunxi_sid** %8, align 8
  %44 = getelementptr inbounds %struct.sunxi_sid, %struct.sunxi_sid* %43, i32 0, i32 0
  store %struct.nvmem_device* %42, %struct.nvmem_device** %44, align 8
  %45 = load %struct.sunxi_sid*, %struct.sunxi_sid** %8, align 8
  %46 = getelementptr inbounds %struct.sunxi_sid, %struct.sunxi_sid* %45, i32 0, i32 0
  %47 = load %struct.nvmem_device*, %struct.nvmem_device** %46, align 8
  %48 = call i64 @IS_ERR(%struct.nvmem_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %31
  %51 = load %struct.sunxi_sid*, %struct.sunxi_sid** %8, align 8
  %52 = getelementptr inbounds %struct.sunxi_sid, %struct.sunxi_sid* %51, i32 0, i32 0
  %53 = load %struct.nvmem_device*, %struct.nvmem_device** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.nvmem_device* %53)
  store i32 %54, i32* %2, align 4
  br label %133

55:                                               ; preds = %31
  %56 = load %struct.sunxi_sid_cfg*, %struct.sunxi_sid_cfg** %11, align 8
  %57 = getelementptr inbounds %struct.sunxi_sid_cfg, %struct.sunxi_sid_cfg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @devm_kzalloc(%struct.device* %59, i32 48, i32 %60)
  %62 = bitcast i8* %61 to %struct.nvmem_config*
  store %struct.nvmem_config* %62, %struct.nvmem_config** %6, align 8
  %63 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %64 = icmp ne %struct.nvmem_config* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %133

68:                                               ; preds = %55
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %71 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %70, i32 0, i32 7
  store %struct.device* %69, %struct.device** %71, align 8
  %72 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %73 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %73, align 8
  %74 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %75 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  %76 = load %struct.sunxi_sid_cfg*, %struct.sunxi_sid_cfg** %11, align 8
  %77 = getelementptr inbounds %struct.sunxi_sid_cfg, %struct.sunxi_sid_cfg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %80 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %82 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %81, i32 0, i32 3
  store i32 1, i32* %82, align 8
  %83 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %84 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %83, i32 0, i32 4
  store i32 4, i32* %84, align 4
  %85 = load %struct.sunxi_sid*, %struct.sunxi_sid** %8, align 8
  %86 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %87 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %86, i32 0, i32 6
  store %struct.sunxi_sid* %85, %struct.sunxi_sid** %87, align 8
  %88 = load %struct.sunxi_sid_cfg*, %struct.sunxi_sid_cfg** %11, align 8
  %89 = getelementptr inbounds %struct.sunxi_sid_cfg, %struct.sunxi_sid_cfg* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %68
  %93 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %94 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %93, i32 0, i32 5
  store i32 (%struct.sunxi_sid*, i32, i8*, i32)* @sun8i_sid_read_by_reg, i32 (%struct.sunxi_sid*, i32, i8*, i32)** %94, align 8
  br label %98

95:                                               ; preds = %68
  %96 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %97 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %96, i32 0, i32 5
  store i32 (%struct.sunxi_sid*, i32, i8*, i32)* @sunxi_sid_read, i32 (%struct.sunxi_sid*, i32, i8*, i32)** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %101 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %99, %struct.nvmem_config* %100)
  store %struct.nvmem_device* %101, %struct.nvmem_device** %7, align 8
  %102 = load %struct.nvmem_device*, %struct.nvmem_device** %7, align 8
  %103 = call i64 @IS_ERR(%struct.nvmem_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.nvmem_device*, %struct.nvmem_device** %7, align 8
  %107 = call i32 @PTR_ERR(%struct.nvmem_device* %106)
  store i32 %107, i32* %2, align 4
  br label %133

108:                                              ; preds = %98
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @kzalloc(i32 %109, i32 %110)
  store i8* %111, i8** %10, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %133

117:                                              ; preds = %108
  %118 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %119 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %118, i32 0, i32 5
  %120 = load i32 (%struct.sunxi_sid*, i32, i8*, i32)*, i32 (%struct.sunxi_sid*, i32, i8*, i32)** %119, align 8
  %121 = load %struct.sunxi_sid*, %struct.sunxi_sid** %8, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 %120(%struct.sunxi_sid* %121, i32 0, i8* %122, i32 %123)
  %125 = load i8*, i8** %10, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @add_device_randomness(i8* %125, i32 %126)
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @kfree(i8* %128)
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = load %struct.nvmem_device*, %struct.nvmem_device** %7, align 8
  %132 = call i32 @platform_set_drvdata(%struct.platform_device* %130, %struct.nvmem_device* %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %117, %114, %105, %65, %50, %28, %20
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.sunxi_sid_cfg* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.nvmem_device* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.nvmem_device*) #1

declare dso_local i32 @PTR_ERR(%struct.nvmem_device*) #1

declare dso_local i32 @sun8i_sid_read_by_reg(%struct.sunxi_sid*, i32, i8*, i32) #1

declare dso_local i32 @sunxi_sid_read(%struct.sunxi_sid*, i32, i8*, i32) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.nvmem_config*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @add_device_randomness(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
