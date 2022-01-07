; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_meson-mx-efuse.c_meson_mx_efuse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_meson-mx-efuse.c_meson_mx_efuse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.meson_mx_efuse_platform_data = type { i32, i32 }
%struct.meson_mx_efuse = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.meson_mx_efuse*, i32*, i32, i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@SZ_512 = common dso_local global i32 0, align 4
@meson_mx_efuse_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get core clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_mx_efuse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_efuse_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.meson_mx_efuse_platform_data*, align 8
  %5 = alloca %struct.meson_mx_efuse*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.meson_mx_efuse_platform_data* @of_device_get_match_data(i32* %8)
  store %struct.meson_mx_efuse_platform_data* %9, %struct.meson_mx_efuse_platform_data** %4, align 8
  %10 = load %struct.meson_mx_efuse_platform_data*, %struct.meson_mx_efuse_platform_data** %4, align 8
  %11 = icmp ne %struct.meson_mx_efuse_platform_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %122

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.meson_mx_efuse* @devm_kzalloc(i32* %17, i32 64, i32 %18)
  store %struct.meson_mx_efuse* %19, %struct.meson_mx_efuse** %5, align 8
  %20 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %21 = icmp ne %struct.meson_mx_efuse* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %122

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = call i32 @devm_ioremap_resource(i32* %30, %struct.resource* %31)
  %33 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %34 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %36 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %42 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %122

45:                                               ; preds = %25
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.meson_mx_efuse_platform_data*, %struct.meson_mx_efuse_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.meson_mx_efuse_platform_data, %struct.meson_mx_efuse_platform_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @devm_kstrdup(i32* %47, i32 %50, i32 %51)
  %53 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %54 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 8
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %58 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 7
  store i32 %56, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %63 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  store i32* %61, i32** %64, align 8
  %65 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %66 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %67 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  store %struct.meson_mx_efuse* %65, %struct.meson_mx_efuse** %68, align 8
  %69 = load %struct.meson_mx_efuse_platform_data*, %struct.meson_mx_efuse_platform_data** %4, align 8
  %70 = getelementptr inbounds %struct.meson_mx_efuse_platform_data, %struct.meson_mx_efuse_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %73 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 8
  %75 = load %struct.meson_mx_efuse_platform_data*, %struct.meson_mx_efuse_platform_data** %4, align 8
  %76 = getelementptr inbounds %struct.meson_mx_efuse_platform_data, %struct.meson_mx_efuse_platform_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %79 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @SZ_512, align 4
  %82 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %83 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %86 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load i32, i32* @meson_mx_efuse_read, align 4
  %89 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %90 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @devm_clk_get(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %96 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %98 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @IS_ERR(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %45
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %107 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %2, align 4
  br label %122

110:                                              ; preds = %45
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %114 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %113, i32 0, i32 1
  %115 = call i32 @devm_nvmem_register(i32* %112, %struct.TYPE_2__* %114)
  %116 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %117 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %119 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @PTR_ERR_OR_ZERO(i32 %120)
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %110, %102, %40, %22, %12
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.meson_mx_efuse_platform_data* @of_device_get_match_data(i32*) #1

declare dso_local %struct.meson_mx_efuse* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_kstrdup(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_nvmem_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
