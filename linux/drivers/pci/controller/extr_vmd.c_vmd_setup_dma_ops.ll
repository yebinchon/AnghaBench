; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_setup_dma_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_setup_dma_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmd_dev = type { %struct.TYPE_4__, %struct.dma_domain, %struct.dma_map_ops, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_domain = type { %struct.dma_map_ops*, i32 }
%struct.dma_map_ops = type { i32 }
%struct.TYPE_3__ = type { i32 }

@alloc = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@mmap = common dso_local global i32 0, align 4
@get_sgtable = common dso_local global i32 0, align 4
@map_page = common dso_local global i32 0, align 4
@unmap_page = common dso_local global i32 0, align 4
@map_sg = common dso_local global i32 0, align 4
@unmap_sg = common dso_local global i32 0, align 4
@sync_single_for_cpu = common dso_local global i32 0, align 4
@sync_single_for_device = common dso_local global i32 0, align 4
@sync_sg_for_cpu = common dso_local global i32 0, align 4
@sync_sg_for_device = common dso_local global i32 0, align 4
@dma_supported = common dso_local global i32 0, align 4
@get_required_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmd_dev*)* @vmd_setup_dma_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmd_setup_dma_ops(%struct.vmd_dev* %0) #0 {
  %2 = alloca %struct.vmd_dev*, align 8
  %3 = alloca %struct.dma_map_ops*, align 8
  %4 = alloca %struct.dma_map_ops*, align 8
  %5 = alloca %struct.dma_domain*, align 8
  store %struct.vmd_dev* %0, %struct.vmd_dev** %2, align 8
  %6 = load %struct.vmd_dev*, %struct.vmd_dev** %2, align 8
  %7 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call %struct.dma_map_ops* @get_dma_ops(i32* %9)
  store %struct.dma_map_ops* %10, %struct.dma_map_ops** %3, align 8
  %11 = load %struct.vmd_dev*, %struct.vmd_dev** %2, align 8
  %12 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %11, i32 0, i32 2
  store %struct.dma_map_ops* %12, %struct.dma_map_ops** %4, align 8
  %13 = load %struct.vmd_dev*, %struct.vmd_dev** %2, align 8
  %14 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %13, i32 0, i32 1
  store %struct.dma_domain* %14, %struct.dma_domain** %5, align 8
  %15 = load %struct.vmd_dev*, %struct.vmd_dev** %2, align 8
  %16 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dma_domain*, %struct.dma_domain** %5, align 8
  %20 = getelementptr inbounds %struct.dma_domain, %struct.dma_domain* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %22 = load %struct.dma_domain*, %struct.dma_domain** %5, align 8
  %23 = getelementptr inbounds %struct.dma_domain, %struct.dma_domain* %22, i32 0, i32 0
  store %struct.dma_map_ops* %21, %struct.dma_map_ops** %23, align 8
  %24 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %25 = icmp ne %struct.dma_map_ops* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %86

27:                                               ; preds = %1
  %28 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %29 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %30 = load i32, i32* @alloc, align 4
  %31 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %28, %struct.dma_map_ops* %29, i32 %30)
  %32 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %33 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %34 = load i32, i32* @free, align 4
  %35 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %32, %struct.dma_map_ops* %33, i32 %34)
  %36 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %37 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %38 = load i32, i32* @mmap, align 4
  %39 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %36, %struct.dma_map_ops* %37, i32 %38)
  %40 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %41 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %42 = load i32, i32* @get_sgtable, align 4
  %43 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %40, %struct.dma_map_ops* %41, i32 %42)
  %44 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %45 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %46 = load i32, i32* @map_page, align 4
  %47 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %44, %struct.dma_map_ops* %45, i32 %46)
  %48 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %49 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %50 = load i32, i32* @unmap_page, align 4
  %51 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %48, %struct.dma_map_ops* %49, i32 %50)
  %52 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %53 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %54 = load i32, i32* @map_sg, align 4
  %55 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %52, %struct.dma_map_ops* %53, i32 %54)
  %56 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %57 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %58 = load i32, i32* @unmap_sg, align 4
  %59 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %56, %struct.dma_map_ops* %57, i32 %58)
  %60 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %61 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %62 = load i32, i32* @sync_single_for_cpu, align 4
  %63 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %60, %struct.dma_map_ops* %61, i32 %62)
  %64 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %65 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %66 = load i32, i32* @sync_single_for_device, align 4
  %67 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %64, %struct.dma_map_ops* %65, i32 %66)
  %68 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %69 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %70 = load i32, i32* @sync_sg_for_cpu, align 4
  %71 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %68, %struct.dma_map_ops* %69, i32 %70)
  %72 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %73 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %74 = load i32, i32* @sync_sg_for_device, align 4
  %75 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %72, %struct.dma_map_ops* %73, i32 %74)
  %76 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %77 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %78 = load i32, i32* @dma_supported, align 4
  %79 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %76, %struct.dma_map_ops* %77, i32 %78)
  %80 = load %struct.dma_map_ops*, %struct.dma_map_ops** %3, align 8
  %81 = load %struct.dma_map_ops*, %struct.dma_map_ops** %4, align 8
  %82 = load i32, i32* @get_required_mask, align 4
  %83 = call i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops* %80, %struct.dma_map_ops* %81, i32 %82)
  %84 = load %struct.dma_domain*, %struct.dma_domain** %5, align 8
  %85 = call i32 @add_dma_domain(%struct.dma_domain* %84)
  br label %86

86:                                               ; preds = %27, %26
  ret void
}

declare dso_local %struct.dma_map_ops* @get_dma_ops(i32*) #1

declare dso_local i32 @ASSIGN_VMD_DMA_OPS(%struct.dma_map_ops*, %struct.dma_map_ops*, i32) #1

declare dso_local i32 @add_dma_domain(%struct.dma_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
