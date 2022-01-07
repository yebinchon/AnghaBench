; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { %struct.myrs_cmdblk, %struct.pci_dev* }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %union.myrs_sgl, i32, i64, i32 }
%union.myrs_sgl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.myrs_event = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MYRS_STATUS_FAILED = common dso_local global i8 0, align 1
@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_IOCTL_GET_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.myrs_hba*, i32, %struct.myrs_event*)* @myrs_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myrs_get_event(%struct.myrs_hba* %0, i32 %1, %struct.myrs_event* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.myrs_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.myrs_event*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.myrs_cmdblk*, align 8
  %11 = alloca %union.myrs_cmd_mbox*, align 8
  %12 = alloca %union.myrs_sgl*, align 8
  %13 = alloca i8, align 1
  store %struct.myrs_hba* %0, %struct.myrs_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.myrs_event* %2, %struct.myrs_event** %7, align 8
  %14 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %15 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %14, i32 0, i32 1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %18 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %17, i32 0, i32 0
  store %struct.myrs_cmdblk* %18, %struct.myrs_cmdblk** %10, align 8
  %19 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %10, align 8
  %20 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %19, i32 0, i32 1
  store %union.myrs_cmd_mbox* %20, %union.myrs_cmd_mbox** %11, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load %struct.myrs_event*, %struct.myrs_event** %7, align 8
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @dma_map_single(i32* %22, %struct.myrs_event* %23, i32 4, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @dma_mapping_error(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i8, i8* @MYRS_STATUS_FAILED, align 1
  store i8 %32, i8* %4, align 1
  br label %88

33:                                               ; preds = %3
  %34 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %35 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %11, align 8
  %36 = bitcast %union.myrs_cmd_mbox* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i32 %34, i32* %37, align 8
  %38 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %11, align 8
  %39 = bitcast %union.myrs_cmd_mbox* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = lshr i32 %41, 16
  %43 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %11, align 8
  %44 = bitcast %union.myrs_cmd_mbox* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %11, align 8
  %47 = bitcast %union.myrs_cmd_mbox* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @MYRS_IOCTL_GET_EVENT, align 4
  %50 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %11, align 8
  %51 = bitcast %union.myrs_cmd_mbox* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 65535
  %55 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %11, align 8
  %56 = bitcast %union.myrs_cmd_mbox* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %11, align 8
  %59 = bitcast %union.myrs_cmd_mbox* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store %union.myrs_sgl* %60, %union.myrs_sgl** %12, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %union.myrs_sgl*, %union.myrs_sgl** %12, align 8
  %63 = bitcast %union.myrs_sgl* %62 to %struct.TYPE_3__**
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %11, align 8
  %68 = bitcast %union.myrs_cmd_mbox* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %union.myrs_sgl*, %union.myrs_sgl** %12, align 8
  %72 = bitcast %union.myrs_sgl* %71 to %struct.TYPE_3__**
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 4
  %76 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %77 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %10, align 8
  %78 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %76, %struct.myrs_cmdblk* %77)
  %79 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %10, align 8
  %80 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 8
  store i8 %81, i8* %13, align 1
  %82 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %86 = call i32 @dma_unmap_single(i32* %83, i32 %84, i32 4, i32 %85)
  %87 = load i8, i8* %13, align 1
  store i8 %87, i8* %4, align 1
  br label %88

88:                                               ; preds = %33, %31
  %89 = load i8, i8* %4, align 1
  ret i8 %89
}

declare dso_local i32 @dma_map_single(i32*, %struct.myrs_event*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
