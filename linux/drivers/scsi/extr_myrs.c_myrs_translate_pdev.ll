; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_translate_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_translate_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32, %struct.myrs_cmdblk, %struct.pci_dev* }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %union.myrs_sgl, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%union.myrs_sgl = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8, i8, i8 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.myrs_devmap = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MYRS_STATUS_FAILED = common dso_local global i8 0, align 1
@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_IOCTL_XLATE_PDEV_TO_LDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.myrs_hba*, i8, i8, i8, %struct.myrs_devmap*)* @myrs_translate_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myrs_translate_pdev(%struct.myrs_hba* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, %struct.myrs_devmap* %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.myrs_hba*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.myrs_devmap*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.myrs_cmdblk*, align 8
  %15 = alloca %union.myrs_cmd_mbox*, align 8
  %16 = alloca %union.myrs_sgl*, align 8
  %17 = alloca i8, align 1
  store %struct.myrs_hba* %0, %struct.myrs_hba** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store %struct.myrs_devmap* %4, %struct.myrs_devmap** %11, align 8
  %18 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %19 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %18, i32 0, i32 2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %12, align 8
  %21 = load %struct.myrs_devmap*, %struct.myrs_devmap** %11, align 8
  %22 = call i32 @memset(%struct.myrs_devmap* %21, i32 0, i32 4)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load %struct.myrs_devmap*, %struct.myrs_devmap** %11, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_map_single(i32* %24, %struct.myrs_devmap* %25, i32 4, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @dma_mapping_error(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i8, i8* @MYRS_STATUS_FAILED, align 1
  store i8 %34, i8* %6, align 1
  br label %110

35:                                               ; preds = %5
  %36 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %37 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %40 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %39, i32 0, i32 1
  store %struct.myrs_cmdblk* %40, %struct.myrs_cmdblk** %14, align 8
  %41 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %14, align 8
  %42 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %41, i32 0, i32 1
  store %union.myrs_cmd_mbox* %42, %union.myrs_cmd_mbox** %15, align 8
  %43 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %44 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %45 = bitcast %union.myrs_cmd_mbox* %44 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 8
  %47 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %48 = bitcast %union.myrs_cmd_mbox* %47 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %52 = bitcast %union.myrs_cmd_mbox* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %56 = bitcast %union.myrs_cmd_mbox* %55 to %struct.TYPE_8__*
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 4, i32* %57, align 8
  %58 = load i8, i8* %9, align 1
  %59 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %60 = bitcast %union.myrs_cmd_mbox* %59 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i8 %58, i8* %62, align 4
  %63 = load i8, i8* %8, align 1
  %64 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %65 = bitcast %union.myrs_cmd_mbox* %64 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i8 %63, i8* %67, align 1
  %68 = load i8, i8* %10, align 1
  %69 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %70 = bitcast %union.myrs_cmd_mbox* %69 to %struct.TYPE_8__*
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i8 %68, i8* %72, align 2
  %73 = load i32, i32* @MYRS_IOCTL_XLATE_PDEV_TO_LDEV, align 4
  %74 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %75 = bitcast %union.myrs_cmd_mbox* %74 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %78 = bitcast %union.myrs_cmd_mbox* %77 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store %union.myrs_sgl* %79, %union.myrs_sgl** %16, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load %union.myrs_sgl*, %union.myrs_sgl** %16, align 8
  %82 = bitcast %union.myrs_sgl* %81 to %struct.TYPE_7__**
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 %80, i32* %85, align 4
  %86 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %15, align 8
  %87 = bitcast %union.myrs_cmd_mbox* %86 to %struct.TYPE_8__*
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %union.myrs_sgl*, %union.myrs_sgl** %16, align 8
  %91 = bitcast %union.myrs_sgl* %90 to %struct.TYPE_7__**
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 %89, i32* %94, align 4
  %95 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %96 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %14, align 8
  %97 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %95, %struct.myrs_cmdblk* %96)
  %98 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %14, align 8
  %99 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %98, i32 0, i32 0
  %100 = load i8, i8* %99, align 8
  store i8 %100, i8* %17, align 1
  %101 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %102 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %108 = call i32 @dma_unmap_single(i32* %105, i32 %106, i32 4, i32 %107)
  %109 = load i8, i8* %17, align 1
  store i8 %109, i8* %6, align 1
  br label %110

110:                                              ; preds = %35, %33
  %111 = load i8, i8* %6, align 1
  ret i8 %111
}

declare dso_local i32 @memset(%struct.myrs_devmap*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, %struct.myrs_devmap*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
