; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ism_dev = type { %struct.TYPE_3__*, %struct.pci_dev*, i32 }
%struct.TYPE_3__ = type { %struct.ism_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i64 0, align 8
@ism_ops = common dso_local global i32 0, align 4
@ISM_NR_DMBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ism_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ism_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ism_dev* @kzalloc(i32 24, i32 %8)
  store %struct.ism_dev* %9, %struct.ism_dev** %6, align 8
  %10 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %11 = icmp ne %struct.ism_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %101

15:                                               ; preds = %2
  %16 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %17 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %22 = call i32 @dev_set_drvdata(i32* %20, %struct.ism_dev* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %25 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %24, i32 0, i32 1
  store %struct.pci_dev* %23, %struct.pci_dev** %25, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_enable_device_mem(%struct.pci_dev* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %94

31:                                               ; preds = %15
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i32, i32* @DRV_NAME, align 4
  %34 = call i32 @pci_request_mem_regions(%struct.pci_dev* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %91

38:                                               ; preds = %31
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @DMA_BIT_MASK(i32 64)
  %41 = call i32 @pci_set_dma_mask(%struct.pci_dev* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %88

45:                                               ; preds = %38
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i64, i64* @SZ_1M, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @dma_set_seg_boundary(i32* %47, i64 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i64, i64* @SZ_1M, align 8
  %54 = call i32 @dma_set_max_seg_size(i32* %52, i64 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_set_master(%struct.pci_dev* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_name(i32* %60)
  %62 = load i32, i32* @ISM_NR_DMBS, align 4
  %63 = call %struct.TYPE_3__* @smcd_alloc_dev(i32* %58, i32 %61, i32* @ism_ops, i32 %62)
  %64 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %65 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %64, i32 0, i32 0
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %65, align 8
  %66 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %67 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = icmp ne %struct.TYPE_3__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %45
  br label %88

71:                                               ; preds = %45
  %72 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %73 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %74 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store %struct.ism_dev* %72, %struct.ism_dev** %76, align 8
  %77 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %78 = call i32 @ism_dev_init(%struct.ism_dev* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %83

82:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %101

83:                                               ; preds = %81
  %84 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %85 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = call i32 @smcd_free_dev(%struct.TYPE_3__* %86)
  br label %88

88:                                               ; preds = %83, %70, %44
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i32 @pci_release_mem_regions(%struct.pci_dev* %89)
  br label %91

91:                                               ; preds = %88, %37
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = call i32 @pci_disable_device(%struct.pci_dev* %92)
  br label %94

94:                                               ; preds = %91, %30
  %95 = load %struct.ism_dev*, %struct.ism_dev** %6, align 8
  %96 = call i32 @kfree(%struct.ism_dev* %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = call i32 @dev_set_drvdata(i32* %98, %struct.ism_dev* null)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %82, %12
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.ism_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.ism_dev*) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_mem_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_seg_boundary(i32*, i64) #1

declare dso_local i32 @dma_set_max_seg_size(i32*, i64) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.TYPE_3__* @smcd_alloc_dev(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ism_dev_init(%struct.ism_dev*) #1

declare dso_local i32 @smcd_free_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.ism_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
