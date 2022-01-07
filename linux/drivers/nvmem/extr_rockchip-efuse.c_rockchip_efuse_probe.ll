; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_rockchip-efuse.c_rockchip_efuse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_rockchip-efuse.c_rockchip_efuse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.device*, %struct.rockchip_efuse_chip*, i8*, i32 }
%struct.device = type { i32 }
%struct.rockchip_efuse_chip = type { %struct.device*, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }
%struct.nvmem_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"pclk_efuse\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"rockchip,efuse-size\00", align 1
@econfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_efuse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_efuse_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.nvmem_device*, align 8
  %6 = alloca %struct.rockchip_efuse_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = load %struct.device*, %struct.device** %8, align 8
  %12 = call i8* @of_device_get_match_data(%struct.device* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.rockchip_efuse_chip* @devm_kzalloc(%struct.device* %21, i32 16, i32 %22)
  store %struct.rockchip_efuse_chip* %23, %struct.rockchip_efuse_chip** %6, align 8
  %24 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %25 = icmp ne %struct.rockchip_efuse_chip* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %20
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %4, align 8
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load %struct.resource*, %struct.resource** %4, align 8
  %35 = call i32 @devm_ioremap_resource(%struct.device* %33, %struct.resource* %34)
  %36 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %37 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %39 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %45 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %29
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = call i32 @devm_clk_get(%struct.device* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %52 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %54 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %60 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %85

63:                                               ; preds = %48
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %66 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %65, i32 0, i32 0
  store %struct.device* %64, %struct.device** %66, align 8
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @of_property_read_u32(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 3))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.resource*, %struct.resource** %4, align 8
  %74 = call i32 @resource_size(%struct.resource* %73)
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 3), align 8
  br label %75

75:                                               ; preds = %72, %63
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 2), align 8
  %77 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  store %struct.rockchip_efuse_chip* %77, %struct.rockchip_efuse_chip** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 1), align 8
  %78 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %6, align 8
  %79 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %78, i32 0, i32 0
  %80 = load %struct.device*, %struct.device** %79, align 8
  store %struct.device* %80, %struct.device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 0), align 8
  %81 = load %struct.device*, %struct.device** %8, align 8
  %82 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %81, %struct.TYPE_3__* @econfig)
  store %struct.nvmem_device* %82, %struct.nvmem_device** %5, align 8
  %83 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %84 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %75, %58, %43, %26, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.rockchip_efuse_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
