; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_stm32-romem.c_stm32_romem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_stm32-romem.c_stm32_romem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.stm32_romem_cfg = type { i32 }
%struct.stm32_romem_priv = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, %struct.stm32_romem_priv*, %struct.device* }
%struct.resource = type { i32 }
%struct.TYPE_5__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"stm32-romem\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@stm32_romem_read = common dso_local global i32 0, align 4
@stm32_bsec_read = common dso_local global i32 0, align 4
@stm32_bsec_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_romem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_romem_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_romem_cfg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.stm32_romem_priv*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.stm32_romem_priv* @devm_kzalloc(%struct.device* %10, i32 64, i32 %11)
  store %struct.stm32_romem_priv* %12, %struct.stm32_romem_priv** %6, align 8
  %13 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %14 = icmp ne %struct.stm32_romem_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %7, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = call i32 @devm_ioremap_resource(%struct.device* %22, %struct.resource* %23)
  %25 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %26 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %28 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %34 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %105

37:                                               ; preds = %18
  %38 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %39 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %42 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %45 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %49 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 9
  store %struct.device* %47, %struct.device** %50, align 8
  %51 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %52 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %53 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  store %struct.stm32_romem_priv* %51, %struct.stm32_romem_priv** %54, align 8
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %57 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  store i32 %55, i32* %58, align 8
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call %struct.TYPE_5__* @of_match_device(i32 %63, %struct.device* %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.stm32_romem_cfg*
  store %struct.stm32_romem_cfg* %68, %struct.stm32_romem_cfg** %4, align 8
  %69 = load %struct.stm32_romem_cfg*, %struct.stm32_romem_cfg** %4, align 8
  %70 = icmp ne %struct.stm32_romem_cfg* %69, null
  br i1 %70, label %84, label %71

71:                                               ; preds = %37
  %72 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %73 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32 1, i32* %74, align 8
  %75 = load %struct.resource*, %struct.resource** %7, align 8
  %76 = call i32 @resource_size(%struct.resource* %75)
  %77 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %78 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 6
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @stm32_romem_read, align 4
  %81 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %82 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  store i32 %80, i32* %83, align 8
  br label %99

84:                                               ; preds = %37
  %85 = load %struct.stm32_romem_cfg*, %struct.stm32_romem_cfg** %4, align 8
  %86 = getelementptr inbounds %struct.stm32_romem_cfg, %struct.stm32_romem_cfg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %89 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 6
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @stm32_bsec_read, align 4
  %92 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %93 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @stm32_bsec_write, align 4
  %96 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %97 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 4
  br label %99

99:                                               ; preds = %84, %71
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = load %struct.stm32_romem_priv*, %struct.stm32_romem_priv** %6, align 8
  %102 = getelementptr inbounds %struct.stm32_romem_priv, %struct.stm32_romem_priv* %101, i32 0, i32 0
  %103 = call i32 @devm_nvmem_register(%struct.device* %100, %struct.TYPE_6__* %102)
  %104 = call i32 @PTR_ERR_OR_ZERO(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %32, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.stm32_romem_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_5__* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @devm_nvmem_register(%struct.device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
