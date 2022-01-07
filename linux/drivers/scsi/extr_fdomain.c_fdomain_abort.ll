; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.fdomain = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@aborted = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @fdomain_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fdomain*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = call %struct.fdomain* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.fdomain* %13, %struct.fdomain** %5, align 8
  %14 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %15 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @FAILED, align 4
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %1
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %27 = call i32 @fdomain_make_bus_idle(%struct.fdomain* %26)
  %28 = load i32, i32* @aborted, align 4
  %29 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %30 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %28
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @DID_ABORT, align 4
  %37 = shl i32 %36, 16
  %38 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %39 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %43 = load i32, i32* @DID_ABORT, align 4
  %44 = shl i32 %43, 16
  %45 = call i32 @fdomain_finish_cmd(%struct.fdomain* %42, i32 %44)
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32 %48, i64 %49)
  %51 = load i32, i32* @SUCCESS, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %20, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.fdomain* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @fdomain_make_bus_idle(%struct.fdomain*) #1

declare dso_local i32 @fdomain_finish_cmd(%struct.fdomain*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
