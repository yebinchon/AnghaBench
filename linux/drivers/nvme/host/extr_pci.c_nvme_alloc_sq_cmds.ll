; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_alloc_sq_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_alloc_sq_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, i32, i64 }
%struct.nvme_queue = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@NVME_CMBSZ_SQS = common dso_local global i32 0, align 4
@NVMEQ_SQ_CMB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, %struct.nvme_queue*, i32)* @nvme_alloc_sq_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_alloc_sq_cmds(%struct.nvme_dev* %0, %struct.nvme_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca %struct.nvme_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store %struct.nvme_queue* %1, %struct.nvme_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %10 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %3
  %16 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %15
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %22 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NVME_CMBSZ_SQS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %29 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %30 = call i32 @SQ_SIZE(%struct.nvme_queue* %29)
  %31 = call i32 @pci_alloc_p2pmem(%struct.pci_dev* %28, i32 %30)
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %33 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %35 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %27
  %39 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %40 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %41 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pci_p2pmem_virt_to_bus(%struct.pci_dev* %39, i32 %42)
  %44 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %45 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %47 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load i32, i32* @NVMEQ_SQ_CMB, align 4
  %52 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %53 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %52, i32 0, i32 2
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  store i32 0, i32* %4, align 4
  br label %84

55:                                               ; preds = %38
  %56 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %57 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %58 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %61 = call i32 @SQ_SIZE(%struct.nvme_queue* %60)
  %62 = call i32 @pci_free_p2pmem(%struct.pci_dev* %56, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %55, %27
  br label %64

64:                                               ; preds = %63, %20, %15, %3
  %65 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %66 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %69 = call i32 @SQ_SIZE(%struct.nvme_queue* %68)
  %70 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %71 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %70, i32 0, i32 1
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @dma_alloc_coherent(i32 %67, i32 %69, i32* %71, i32 %72)
  %74 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %75 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %77 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %64
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %80, %50
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_alloc_p2pmem(%struct.pci_dev*, i32) #1

declare dso_local i32 @SQ_SIZE(%struct.nvme_queue*) #1

declare dso_local i32 @pci_p2pmem_virt_to_bus(%struct.pci_dev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pci_free_p2pmem(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
