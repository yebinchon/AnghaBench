; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.mvumi_cmd = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.mvumi_hba = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i32** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@DRIVER_INVALID = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@BLK_EH_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @mvumi_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_timed_out(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.mvumi_cmd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.mvumi_hba*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to %struct.mvumi_cmd*
  store %struct.mvumi_cmd* %11, %struct.mvumi_cmd** %3, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %4, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = call %struct.mvumi_hba* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.mvumi_hba* %18, %struct.mvumi_hba** %5, align 8
  %19 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %20 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %27 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %26, i32 0, i32 4
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32*, i32** %28, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %1
  %38 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %39 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %38, i32 0, i32 4
  %40 = load i32**, i32*** %39, align 8
  %41 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %40, i64 %45
  store i32* null, i32** %46, align 8
  %47 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %48 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %49 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %48, i32 0, i32 3
  %50 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @tag_release_one(%struct.mvumi_hba* %47, i32* %49, i64 %54)
  br label %56

56:                                               ; preds = %37, %1
  %57 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %57, i32 0, i32 0
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %63 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %62, i32 0, i32 0
  %64 = call i32 @list_del_init(i32* %63)
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %67 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %66, i32 0, i32 2
  %68 = call i32 @atomic_dec(i32* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @DRIVER_INVALID, align 4
  %71 = shl i32 %70, 24
  %72 = load i32, i32* @DID_ABORT, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %71, %73
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %81 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %69
  %84 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %85 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %89 = call i32 @scsi_sglist(%struct.scsi_cmnd* %88)
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %91 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %90)
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dma_unmap_sg(i32* %87, i32 %89, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %83, %69
  %97 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %98 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %3, align 8
  %99 = call i32 @mvumi_return_cmd(%struct.mvumi_hba* %97, %struct.mvumi_cmd* %98)
  %100 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %101 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32 %104, i64 %105)
  %107 = load i32, i32* @BLK_EH_DONE, align 4
  ret i32 %107
}

declare dso_local %struct.mvumi_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @tag_release_one(%struct.mvumi_hba*, i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @mvumi_return_cmd(%struct.mvumi_hba*, %struct.mvumi_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
