; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_rbld_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_rbld_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { %struct.TYPE_4__*, %struct.myrb_cmdblk }
%struct.TYPE_4__ = type { i32 }
%struct.myrb_cmdblk = type { %union.myrb_cmd_mbox }
%union.myrb_cmd_mbox = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.myrb_rbld_progress = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MYRB_STATUS_RBLD_NOT_CHECKED = common dso_local global i16 0, align 2
@MYRB_MCMD_TAG = common dso_local global i32 0, align 4
@MYRB_CMD_GET_REBUILD_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.myrb_hba*, %struct.myrb_rbld_progress*)* @myrb_get_rbld_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba* %0, %struct.myrb_rbld_progress* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.myrb_hba*, align 8
  %5 = alloca %struct.myrb_rbld_progress*, align 8
  %6 = alloca %struct.myrb_cmdblk*, align 8
  %7 = alloca %union.myrb_cmd_mbox*, align 8
  %8 = alloca %struct.myrb_rbld_progress*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.myrb_hba* %0, %struct.myrb_hba** %4, align 8
  store %struct.myrb_rbld_progress* %1, %struct.myrb_rbld_progress** %5, align 8
  %11 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %12 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %11, i32 0, i32 1
  store %struct.myrb_cmdblk* %12, %struct.myrb_cmdblk** %6, align 8
  %13 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %6, align 8
  %14 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %13, i32 0, i32 0
  store %union.myrb_cmd_mbox* %14, %union.myrb_cmd_mbox** %7, align 8
  %15 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %16 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.myrb_rbld_progress* @dma_alloc_coherent(i32* %18, i32 4, i32* %9, i32 %19)
  store %struct.myrb_rbld_progress* %20, %struct.myrb_rbld_progress** %8, align 8
  %21 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %8, align 8
  %22 = icmp ne %struct.myrb_rbld_progress* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i16, i16* @MYRB_STATUS_RBLD_NOT_CHECKED, align 2
  store i16 %24, i16* %3, align 2
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %6, align 8
  %27 = call i32 @myrb_reset_cmd(%struct.myrb_cmdblk* %26)
  %28 = load i32, i32* @MYRB_MCMD_TAG, align 4
  %29 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %7, align 8
  %30 = bitcast %union.myrb_cmd_mbox* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @MYRB_CMD_GET_REBUILD_PROGRESS, align 4
  %33 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %7, align 8
  %34 = bitcast %union.myrb_cmd_mbox* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %7, align 8
  %38 = bitcast %union.myrb_cmd_mbox* %37 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %41 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %6, align 8
  %42 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %40, %struct.myrb_cmdblk* %41)
  store i16 %42, i16* %10, align 2
  %43 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %5, align 8
  %44 = icmp ne %struct.myrb_rbld_progress* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  %46 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %5, align 8
  %47 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %8, align 8
  %48 = call i32 @memcpy(%struct.myrb_rbld_progress* %46, %struct.myrb_rbld_progress* %47, i32 4)
  br label %49

49:                                               ; preds = %45, %25
  %50 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %51 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.myrb_rbld_progress*, %struct.myrb_rbld_progress** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dma_free_coherent(i32* %53, i32 4, %struct.myrb_rbld_progress* %54, i32 %55)
  %57 = load i16, i16* %10, align 2
  store i16 %57, i16* %3, align 2
  br label %58

58:                                               ; preds = %49, %23
  %59 = load i16, i16* %3, align 2
  ret i16 %59
}

declare dso_local %struct.myrb_rbld_progress* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @myrb_reset_cmd(%struct.myrb_cmdblk*) #1

declare dso_local zeroext i16 @myrb_exec_cmd(%struct.myrb_hba*, %struct.myrb_cmdblk*) #1

declare dso_local i32 @memcpy(%struct.myrb_rbld_progress*, %struct.myrb_rbld_progress*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.myrb_rbld_progress*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
