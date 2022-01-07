; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_be_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_be_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32, i32, %struct.pci_dev*, %struct.be_dma_mem, %struct.be_dma_mem }
%struct.be_dma_mem = type { i32, i8*, i8* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.pci_dev*)* @be_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_ctrl_init(%struct.beiscsi_hba* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.be_ctrl_info*, align 8
  %7 = alloca %struct.be_dma_mem*, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 0
  store %struct.be_ctrl_info* %11, %struct.be_ctrl_info** %6, align 8
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 4
  store %struct.be_dma_mem* %13, %struct.be_dma_mem** %7, align 8
  %14 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %15 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %14, i32 0, i32 3
  store %struct.be_dma_mem* %15, %struct.be_dma_mem** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %18 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %17, i32 0, i32 2
  store %struct.pci_dev* %16, %struct.pci_dev** %18, align 8
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @beiscsi_map_pci_bars(%struct.beiscsi_hba* %19, %struct.pci_dev* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %27, i32 0, i32 0
  store i32 20, i32* %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %32 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %34, i32 0, i32 2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @dma_alloc_coherent(i32* %30, i32 %33, i8** %35, i32 %36)
  %38 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %39 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %41 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %26
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %46 = call i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %26
  %50 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %51 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  %52 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %53 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @PTR_ALIGN(i8* %54, i32 16)
  %56 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %57 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %59 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @PTR_ALIGN(i8* %60, i32 16)
  %62 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %63 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %65 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @memset(i8* %66, i32 0, i32 4)
  %68 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %69 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %68, i32 0, i32 1
  %70 = call i32 @mutex_init(i32* %69)
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %72 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %49, %44, %24
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @beiscsi_map_pci_bars(%struct.beiscsi_hba*, %struct.pci_dev*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i8**, i32) #1

declare dso_local i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba*) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
