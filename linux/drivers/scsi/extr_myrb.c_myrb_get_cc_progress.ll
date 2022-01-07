; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_cc_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_cc_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i32, %struct.TYPE_4__*, i32, %struct.myrb_cmdblk }
%struct.TYPE_4__ = type { i32 }
%struct.myrb_cmdblk = type { %union.myrb_cmd_mbox }
%union.myrb_cmd_mbox = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.myrb_rbld_progress = type { i32, i32, i32 }
%struct.scsi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MYRB_MCMD_TAG = common dso_local global i32 0, align 4
@MYRB_CMD_REBUILD_STAT = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Consistency Check in Progress: %d%% completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrb_hba*)* @myrb_get_cc_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_get_cc_progress(%struct.myrb_hba* %0) #0 {
  %2 = alloca %struct.myrb_hba*, align 8
  %3 = alloca %struct.myrb_cmdblk*, align 8
  %4 = alloca %union.myrb_cmd_mbox*, align 8
  %5 = alloca %struct.myrb_rbld_progress*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_device*, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %2, align 8
  %12 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %13 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %12, i32 0, i32 3
  store %struct.myrb_cmdblk* %13, %struct.myrb_cmdblk** %3, align 8
  %14 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %3, align 8
  %15 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %14, i32 0, i32 0
  store %union.myrb_cmd_mbox* %15, %union.myrb_cmd_mbox** %4, align 8
  %16 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %17 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.myrb_rbld_progress* @dma_alloc_coherent(i32* %19, i32 12, i32* %6, i32 %20)
  store %struct.myrb_rbld_progress* %21, %struct.myrb_rbld_progress** %5, align 8
  %22 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %5, align 8
  %23 = icmp ne %struct.myrb_rbld_progress* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %26 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %94

27:                                               ; preds = %1
  %28 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %3, align 8
  %29 = call i32 @myrb_reset_cmd(%struct.myrb_cmdblk* %28)
  %30 = load i32, i32* @MYRB_MCMD_TAG, align 4
  %31 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %4, align 8
  %32 = bitcast %union.myrb_cmd_mbox* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @MYRB_CMD_REBUILD_STAT, align 4
  %35 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %4, align 8
  %36 = bitcast %union.myrb_cmd_mbox* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %4, align 8
  %40 = bitcast %union.myrb_cmd_mbox* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %43 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %3, align 8
  %44 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %42, %struct.myrb_cmdblk* %43)
  store i16 %44, i16* %7, align 2
  %45 = load i16, i16* %7, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %27
  %51 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %5, align 8
  %52 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %5, align 8
  %55 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %5, align 8
  %59 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %57, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %63 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %66 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @myrb_logical_channel(i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = call %struct.scsi_device* @scsi_device_lookup(i32 %64, i32 %68, i32 %69, i32 0)
  store %struct.scsi_device* %70, %struct.scsi_device** %11, align 8
  %71 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %72 = icmp ne %struct.scsi_device* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %50
  %74 = load i32, i32* @KERN_INFO, align 4
  %75 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = lshr i32 %76, 7
  %78 = mul i32 100, %77
  %79 = load i32, i32* %9, align 4
  %80 = lshr i32 %79, 7
  %81 = udiv i32 %78, %80
  %82 = call i32 @sdev_printk(i32 %74, %struct.scsi_device* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %84 = call i32 @scsi_device_put(%struct.scsi_device* %83)
  br label %85

85:                                               ; preds = %73, %50
  br label %86

86:                                               ; preds = %85, %27
  %87 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %88 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @dma_free_coherent(i32* %90, i32 12, %struct.myrb_rbld_progress* %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %24
  ret void
}

declare dso_local %struct.myrb_rbld_progress* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @myrb_reset_cmd(%struct.myrb_cmdblk*) #1

declare dso_local zeroext i16 @myrb_exec_cmd(%struct.myrb_hba*, %struct.myrb_cmdblk*) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @myrb_logical_channel(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.myrb_rbld_progress*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
