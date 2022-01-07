; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_omap_remoteproc.c_omap_rproc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_omap_remoteproc.c_omap_rproc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.omap_rproc_pdata* }
%struct.omap_rproc_pdata = type { i32, i32 }
%struct.omap_rproc = type { %struct.rproc* }
%struct.rproc = type { i32, %struct.omap_rproc* }

@.str = private unnamed_addr constant [27 x i8] c"dma_set_coherent_mask: %d\0A\00", align 1
@omap_rproc_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_rproc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rproc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_rproc_pdata*, align 8
  %5 = alloca %struct.omap_rproc*, align 8
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %10, align 8
  store %struct.omap_rproc_pdata* %11, %struct.omap_rproc_pdata** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @DMA_BIT_MASK(i32 32)
  %15 = call i32 @dma_set_coherent_mask(%struct.TYPE_4__* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %61

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %4, align 8
  %28 = getelementptr inbounds %struct.omap_rproc_pdata, %struct.omap_rproc_pdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %4, align 8
  %31 = getelementptr inbounds %struct.omap_rproc_pdata, %struct.omap_rproc_pdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.rproc* @rproc_alloc(%struct.TYPE_4__* %26, i32 %29, i32* @omap_rproc_ops, i32 %32, i32 8)
  store %struct.rproc* %33, %struct.rproc** %6, align 8
  %34 = load %struct.rproc*, %struct.rproc** %6, align 8
  %35 = icmp ne %struct.rproc* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %24
  %40 = load %struct.rproc*, %struct.rproc** %6, align 8
  %41 = getelementptr inbounds %struct.rproc, %struct.rproc* %40, i32 0, i32 1
  %42 = load %struct.omap_rproc*, %struct.omap_rproc** %41, align 8
  store %struct.omap_rproc* %42, %struct.omap_rproc** %5, align 8
  %43 = load %struct.rproc*, %struct.rproc** %6, align 8
  %44 = load %struct.omap_rproc*, %struct.omap_rproc** %5, align 8
  %45 = getelementptr inbounds %struct.omap_rproc, %struct.omap_rproc* %44, i32 0, i32 0
  store %struct.rproc* %43, %struct.rproc** %45, align 8
  %46 = load %struct.rproc*, %struct.rproc** %6, align 8
  %47 = getelementptr inbounds %struct.rproc, %struct.rproc* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.rproc*, %struct.rproc** %6, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.rproc* %49)
  %51 = load %struct.rproc*, %struct.rproc** %6, align 8
  %52 = call i32 @rproc_add(%struct.rproc* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %57

56:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %61

57:                                               ; preds = %55
  %58 = load %struct.rproc*, %struct.rproc** %6, align 8
  %59 = call i32 @rproc_free(%struct.rproc* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %56, %36, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @dma_set_coherent_mask(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local %struct.rproc* @rproc_alloc(%struct.TYPE_4__*, i32, i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rproc*) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
