; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_pdev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_pdev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { %struct.TYPE_12__*, i32, %struct.TYPE_11__*, %struct.myrs_cmdblk }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %union.myrs_sgl, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%union.myrs_sgl = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8, i8, i8 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.myrs_pdev_info = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MYRS_STATUS_FAILED = common dso_local global i8 0, align 1
@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_DCMD_TAG = common dso_local global i32 0, align 4
@MYRS_IOCTL_GET_PDEV_INFO_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Sending GetPhysicalDeviceInfoValid for pdev %d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.myrs_hba*, i8, i8, i8, %struct.myrs_pdev_info*)* @myrs_get_pdev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myrs_get_pdev_info(%struct.myrs_hba* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, %struct.myrs_pdev_info* %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.myrs_hba*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.myrs_pdev_info*, align 8
  %12 = alloca %struct.myrs_cmdblk*, align 8
  %13 = alloca %union.myrs_cmd_mbox*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.myrs_sgl*, align 8
  %16 = alloca i8, align 1
  store %struct.myrs_hba* %0, %struct.myrs_hba** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store %struct.myrs_pdev_info* %4, %struct.myrs_pdev_info** %11, align 8
  %17 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %18 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %17, i32 0, i32 3
  store %struct.myrs_cmdblk* %18, %struct.myrs_cmdblk** %12, align 8
  %19 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %20 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %19, i32 0, i32 1
  store %union.myrs_cmd_mbox* %20, %union.myrs_cmd_mbox** %13, align 8
  %21 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %22 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %11, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_map_single(i32* %24, %struct.myrs_pdev_info* %25, i32 4, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %29 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @dma_mapping_error(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i8, i8* @MYRS_STATUS_FAILED, align 1
  store i8 %36, i8* %6, align 1
  br label %124

37:                                               ; preds = %5
  %38 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %39 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %42 = call i32 @myrs_reset_cmd(%struct.myrs_cmdblk* %41)
  %43 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %44 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %45 = bitcast %union.myrs_cmd_mbox* %44 to %struct.TYPE_10__*
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @MYRS_DCMD_TAG, align 4
  %48 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %49 = bitcast %union.myrs_cmd_mbox* %48 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  %51 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %52 = bitcast %union.myrs_cmd_mbox* %51 to %struct.TYPE_10__*
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %56 = bitcast %union.myrs_cmd_mbox* %55 to %struct.TYPE_10__*
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %60 = bitcast %union.myrs_cmd_mbox* %59 to %struct.TYPE_10__*
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 8
  %62 = load i8, i8* %10, align 1
  %63 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %64 = bitcast %union.myrs_cmd_mbox* %63 to %struct.TYPE_10__*
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i8 %62, i8* %66, align 4
  %67 = load i8, i8* %9, align 1
  %68 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %69 = bitcast %union.myrs_cmd_mbox* %68 to %struct.TYPE_10__*
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i8 %67, i8* %71, align 1
  %72 = load i8, i8* %8, align 1
  %73 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %74 = bitcast %union.myrs_cmd_mbox* %73 to %struct.TYPE_10__*
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i8 %72, i8* %76, align 2
  %77 = load i32, i32* @MYRS_IOCTL_GET_PDEV_INFO_VALID, align 4
  %78 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %79 = bitcast %union.myrs_cmd_mbox* %78 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %82 = bitcast %union.myrs_cmd_mbox* %81 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store %union.myrs_sgl* %83, %union.myrs_sgl** %15, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load %union.myrs_sgl*, %union.myrs_sgl** %15, align 8
  %86 = bitcast %union.myrs_sgl* %85 to %struct.TYPE_9__**
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  %90 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %91 = bitcast %union.myrs_cmd_mbox* %90 to %struct.TYPE_10__*
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %union.myrs_sgl*, %union.myrs_sgl** %15, align 8
  %95 = bitcast %union.myrs_sgl* %94 to %struct.TYPE_9__**
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  %99 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %100 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %99, i32 0, i32 2
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i8, i8* %8, align 1
  %104 = load i8, i8* %9, align 1
  %105 = load i8, i8* %10, align 1
  %106 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 zeroext %103, i8 zeroext %104, i8 zeroext %105)
  %107 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %108 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %109 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %107, %struct.myrs_cmdblk* %108)
  %110 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %111 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %110, i32 0, i32 0
  %112 = load i8, i8* %111, align 8
  store i8 %112, i8* %16, align 1
  %113 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %114 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %113, i32 0, i32 1
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load %struct.myrs_hba*, %struct.myrs_hba** %7, align 8
  %117 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %122 = call i32 @dma_unmap_single(i32* %119, i32 %120, i32 4, i32 %121)
  %123 = load i8, i8* %16, align 1
  store i8 %123, i8* %6, align 1
  br label %124

124:                                              ; preds = %37, %35
  %125 = load i8, i8* %6, align 1
  ret i8 %125
}

declare dso_local i32 @dma_map_single(i32*, %struct.myrs_pdev_info*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrs_reset_cmd(%struct.myrs_cmdblk*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
