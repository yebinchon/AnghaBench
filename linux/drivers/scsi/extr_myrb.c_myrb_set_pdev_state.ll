; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_set_pdev_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_set_pdev_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i32, %struct.myrb_cmdblk }
%struct.myrb_cmdblk = type { %union.myrb_cmd_mbox }
%union.myrb_cmd_mbox = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.scsi_device = type { i32, i32 }

@MYRB_CMD_START_DEVICE = common dso_local global i32 0, align 4
@MYRB_DCMD_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.myrb_hba*, %struct.scsi_device*, i32)* @myrb_set_pdev_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @myrb_set_pdev_state(%struct.myrb_hba* %0, %struct.scsi_device* %1, i32 %2) #0 {
  %4 = alloca %struct.myrb_hba*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.myrb_cmdblk*, align 8
  %8 = alloca %union.myrb_cmd_mbox*, align 8
  %9 = alloca i16, align 2
  store %struct.myrb_hba* %0, %struct.myrb_hba** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %11 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %10, i32 0, i32 1
  store %struct.myrb_cmdblk* %11, %struct.myrb_cmdblk** %7, align 8
  %12 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %7, align 8
  %13 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %12, i32 0, i32 0
  store %union.myrb_cmd_mbox* %13, %union.myrb_cmd_mbox** %8, align 8
  %14 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %15 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* @MYRB_CMD_START_DEVICE, align 4
  %18 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %8, align 8
  %19 = bitcast %union.myrb_cmd_mbox* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @MYRB_DCMD_TAG, align 4
  %22 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %8, align 8
  %23 = bitcast %union.myrb_cmd_mbox* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %8, align 8
  %29 = bitcast %union.myrb_cmd_mbox* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %8, align 8
  %35 = bitcast %union.myrb_cmd_mbox* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 31
  %39 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %8, align 8
  %40 = bitcast %union.myrb_cmd_mbox* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %43 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %7, align 8
  %44 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %42, %struct.myrb_cmdblk* %43)
  store i16 %44, i16* %9, align 2
  %45 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %46 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i16, i16* %9, align 2
  ret i16 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @myrb_exec_cmd(%struct.myrb_hba*, %struct.myrb_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
