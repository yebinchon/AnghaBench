; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_write_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_write_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }

@CFG_LRQ = common dso_local global i32 0, align 4
@CFG_LR = common dso_local global i32 0, align 4
@CFG_LCQ = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Couldn't map DMA area.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SEM_ICB_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Timed out waiting for CFG to come ready.\0A\00", align 1
@ICB_L = common dso_local global i32 0, align 4
@ICB_H = common dso_local global i32 0, align 4
@CFG_Q_MASK = common dso_local global i32 0, align 4
@CFG_Q_SHIFT = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_write_cfg(%struct.ql_adapter* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ql_adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @CFG_LRQ, align 4
  %19 = load i32, i32* @CFG_LR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CFG_LCQ, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %14, align 4
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @pci_map_single(i32 %33, i8* %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @pci_dma_mapping_error(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %29
  %45 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %46 = load i32, i32* @ifup, align 4
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netif_err(%struct.ql_adapter* %45, i32 %46, i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %114

53:                                               ; preds = %29
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %55 = load i32, i32* @SEM_ICB_MASK, align 4
  %56 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %114

61:                                               ; preds = %53
  %62 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @ql_wait_cfg(%struct.ql_adapter* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %69 = load i32, i32* @ifup, align 4
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %71 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @netif_err(%struct.ql_adapter* %68, i32 %69, i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %102

74:                                               ; preds = %61
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %76 = load i32, i32* @ICB_L, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @ql_write32(%struct.ql_adapter* %75, i32 %76, i32 %77)
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %80 = load i32, i32* @ICB_H, align 4
  %81 = load i32, i32* %12, align 4
  %82 = ashr i32 %81, 32
  %83 = call i32 @ql_write32(%struct.ql_adapter* %79, i32 %80, i32 %82)
  %84 = load i32, i32* @CFG_Q_MASK, align 4
  %85 = load i32, i32* %10, align 4
  %86 = shl i32 %85, 16
  %87 = or i32 %84, %86
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @CFG_Q_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %88, %91
  store i32 %92, i32* %16, align 4
  %93 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %94 = load i32, i32* @CFG, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @ql_write32(%struct.ql_adapter* %93, i32 %94, i32 %97)
  %99 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @ql_wait_cfg(%struct.ql_adapter* %99, i32 %100)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %74, %67
  %103 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %104 = load i32, i32* @SEM_ICB_MASK, align 4
  %105 = call i32 @ql_sem_unlock(%struct.ql_adapter* %103, i32 %104)
  %106 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %107 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @pci_unmap_single(i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %102, %59, %44
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @pci_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_wait_cfg(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
