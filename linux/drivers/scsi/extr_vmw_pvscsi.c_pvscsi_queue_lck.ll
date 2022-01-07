; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_queue_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_queue_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.pvscsi_adapter = type { i32 }
%struct.pvscsi_ctx = type { i32 }

@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"queued cmd %p, ctx %p, op=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @pvscsi_queue_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_queue_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.pvscsi_adapter*, align 8
  %8 = alloca %struct.pvscsi_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %6, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %17 = call %struct.pvscsi_adapter* @shost_priv(%struct.Scsi_Host* %16)
  store %struct.pvscsi_adapter* %17, %struct.pvscsi_adapter** %7, align 8
  %18 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %7, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = call %struct.pvscsi_ctx* @pvscsi_acquire_context(%struct.pvscsi_adapter* %22, %struct.scsi_cmnd* %23)
  store %struct.pvscsi_ctx* %24, %struct.pvscsi_ctx** %8, align 8
  %25 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %8, align 8
  %26 = icmp ne %struct.pvscsi_ctx* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %7, align 8
  %29 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %8, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = call i64 @pvscsi_queue_ring(%struct.pvscsi_adapter* %28, %struct.pvscsi_ctx* %29, %struct.scsi_cmnd* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27, %2
  %34 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %8, align 8
  %35 = icmp ne %struct.pvscsi_ctx* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %7, align 8
  %38 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %8, align 8
  %39 = call i32 @pvscsi_release_context(%struct.pvscsi_adapter* %37, %struct.pvscsi_ctx* %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %45, i32* %3, align 4
  br label %70

46:                                               ; preds = %27
  %47 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %47, void (%struct.scsi_cmnd*)** %49, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %10, align 1
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %8, align 8
  %61 = load i8, i8* %10, align 1
  %62 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %59, %struct.pvscsi_ctx* %60, i8 zeroext %61)
  %63 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %7, align 8
  %64 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %63, i32 0, i32 0
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %7, align 8
  %68 = load i8, i8* %10, align 1
  %69 = call i32 @pvscsi_kick_io(%struct.pvscsi_adapter* %67, i8 zeroext %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %46, %40
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.pvscsi_adapter* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pvscsi_ctx* @pvscsi_acquire_context(%struct.pvscsi_adapter*, %struct.scsi_cmnd*) #1

declare dso_local i64 @pvscsi_queue_ring(%struct.pvscsi_adapter*, %struct.pvscsi_ctx*, %struct.scsi_cmnd*) #1

declare dso_local i32 @pvscsi_release_context(%struct.pvscsi_adapter*, %struct.pvscsi_ctx*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.scsi_cmnd*, %struct.pvscsi_ctx*, i8 zeroext) #1

declare dso_local i32 @pvscsi_kick_io(%struct.pvscsi_adapter*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
