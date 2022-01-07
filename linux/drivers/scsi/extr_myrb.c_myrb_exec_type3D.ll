; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_exec_type3D.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_exec_type3D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { %struct.TYPE_3__*, i32, %struct.myrb_cmdblk }
%struct.TYPE_3__ = type { i32 }
%struct.myrb_cmdblk = type { %union.myrb_cmd_mbox }
%union.myrb_cmd_mbox = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.scsi_device = type { i32, i32 }
%struct.myrb_pdev_state = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MYRB_STATUS_SUBSYS_FAILED = common dso_local global i16 0, align 2
@MYRB_DCMD_TAG = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@MYRB_CMD_GET_DEVICE_STATE_OLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.myrb_hba*, i32, %struct.scsi_device*, %struct.myrb_pdev_state*)* @myrb_exec_type3D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @myrb_exec_type3D(%struct.myrb_hba* %0, i32 %1, %struct.scsi_device* %2, %struct.myrb_pdev_state* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.myrb_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.myrb_pdev_state*, align 8
  %10 = alloca %struct.myrb_cmdblk*, align 8
  %11 = alloca %union.myrb_cmd_mbox*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  store %struct.myrb_hba* %0, %struct.myrb_hba** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scsi_device* %2, %struct.scsi_device** %8, align 8
  store %struct.myrb_pdev_state* %3, %struct.myrb_pdev_state** %9, align 8
  %14 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %15 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %14, i32 0, i32 2
  store %struct.myrb_cmdblk* %15, %struct.myrb_cmdblk** %10, align 8
  %16 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %10, align 8
  %17 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %16, i32 0, i32 0
  store %union.myrb_cmd_mbox* %17, %union.myrb_cmd_mbox** %11, align 8
  %18 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %19 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.myrb_pdev_state*, %struct.myrb_pdev_state** %9, align 8
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = call i32 @dma_map_single(i32* %21, %struct.myrb_pdev_state* %22, i32 4, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %26 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @dma_mapping_error(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i16, i16* @MYRB_STATUS_SUBSYS_FAILED, align 2
  store i16 %33, i16* %5, align 2
  br label %95

34:                                               ; preds = %4
  %35 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %36 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %10, align 8
  %39 = call i32 @myrb_reset_cmd(%struct.myrb_cmdblk* %38)
  %40 = load i32, i32* @MYRB_DCMD_TAG, align 4
  %41 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %11, align 8
  %42 = bitcast %union.myrb_cmd_mbox* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %11, align 8
  %46 = bitcast %union.myrb_cmd_mbox* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %11, align 8
  %52 = bitcast %union.myrb_cmd_mbox* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %55 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %11, align 8
  %58 = bitcast %union.myrb_cmd_mbox* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %11, align 8
  %62 = bitcast %union.myrb_cmd_mbox* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %65 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %10, align 8
  %66 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %64, %struct.myrb_cmdblk* %65)
  store i16 %66, i16* %12, align 2
  %67 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %68 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %71 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %76 = call i32 @dma_unmap_single(i32* %73, i32 %74, i32 4, i32 %75)
  %77 = load i16, i16* %12, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %34
  %83 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %11, align 8
  %84 = bitcast %union.myrb_cmd_mbox* %83 to %struct.TYPE_4__*
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @MYRB_CMD_GET_DEVICE_STATE_OLD, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.myrb_pdev_state*, %struct.myrb_pdev_state** %9, align 8
  %92 = call i32 @myrb_translate_devstate(%struct.myrb_pdev_state* %91)
  br label %93

93:                                               ; preds = %90, %82, %34
  %94 = load i16, i16* %12, align 2
  store i16 %94, i16* %5, align 2
  br label %95

95:                                               ; preds = %93, %32
  %96 = load i16, i16* %5, align 2
  ret i16 %96
}

declare dso_local i32 @dma_map_single(i32*, %struct.myrb_pdev_state*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrb_reset_cmd(%struct.myrb_cmdblk*) #1

declare dso_local zeroext i16 @myrb_exec_cmd(%struct.myrb_hba*, %struct.myrb_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @myrb_translate_devstate(%struct.myrb_pdev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
