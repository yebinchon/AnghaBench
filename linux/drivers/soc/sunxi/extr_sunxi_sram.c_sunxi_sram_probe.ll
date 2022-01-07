; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/sunxi/extr_sunxi_sram.c_sunxi_sram_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/sunxi/extr_sunxi_sram.c_sunxi_sram_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.regmap = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.resource = type { i32 }
%struct.dentry = type { i32 }
%struct.sunxi_sramc_variant = type { i64 }

@sram_dev = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@base = common dso_local global %struct.regmap* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@sunxi_sram_fops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sunxi_sram_emac_clock_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_sram_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_sram_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.sunxi_sramc_variant*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** @sram_dev, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.sunxi_sramc_variant* @of_device_get_match_data(%struct.TYPE_6__* %11)
  store %struct.sunxi_sramc_variant* %12, %struct.sunxi_sramc_variant** %7, align 8
  %13 = load %struct.sunxi_sramc_variant*, %struct.sunxi_sramc_variant** %7, align 8
  %14 = icmp ne %struct.sunxi_sramc_variant* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %4, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = call %struct.regmap* @devm_ioremap_resource(%struct.TYPE_6__* %23, %struct.resource* %24)
  store %struct.regmap* %25, %struct.regmap** @base, align 8
  %26 = load %struct.regmap*, %struct.regmap** @base, align 8
  %27 = call i64 @IS_ERR(%struct.regmap* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.regmap*, %struct.regmap** @base, align 8
  %31 = call i32 @PTR_ERR(%struct.regmap* %30)
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %18
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @of_platform_populate(i32 %36, i32* null, i32* null, %struct.TYPE_6__* %38)
  %40 = load i32, i32* @S_IRUGO, align 4
  %41 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %40, i32* null, i32* null, i32* @sunxi_sram_fops)
  store %struct.dentry* %41, %struct.dentry** %5, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = icmp ne %struct.dentry* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %32
  %48 = load %struct.sunxi_sramc_variant*, %struct.sunxi_sramc_variant** %7, align 8
  %49 = getelementptr inbounds %struct.sunxi_sramc_variant, %struct.sunxi_sramc_variant* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.regmap*, %struct.regmap** @base, align 8
  %56 = call %struct.regmap* @devm_regmap_init_mmio(%struct.TYPE_6__* %54, %struct.regmap* %55, i32* @sunxi_sram_emac_clock_regmap)
  store %struct.regmap* %56, %struct.regmap** %6, align 8
  %57 = load %struct.regmap*, %struct.regmap** %6, align 8
  %58 = call i64 @IS_ERR(%struct.regmap* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.regmap*, %struct.regmap** %6, align 8
  %62 = call i32 @PTR_ERR(%struct.regmap* %61)
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %47
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %60, %44, %29, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.sunxi_sramc_variant* @of_device_get_match_data(%struct.TYPE_6__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.regmap* @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.regmap* @devm_regmap_init_mmio(%struct.TYPE_6__*, %struct.regmap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
