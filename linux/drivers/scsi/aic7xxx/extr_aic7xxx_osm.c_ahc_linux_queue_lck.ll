; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_queue_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_queue_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ahc_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ahc_linux_device = type { i32 }

@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @ahc_linux_queue_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_linux_queue_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca void (%struct.scsi_cmnd*)*, align 8
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.ahc_linux_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %4, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call %struct.ahc_linux_device* @scsi_transport_device_data(%struct.TYPE_6__* %11)
  store %struct.ahc_linux_device* %12, %struct.ahc_linux_device** %6, align 8
  %13 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ahc_softc**
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %21, align 8
  store %struct.ahc_softc* %22, %struct.ahc_softc** %5, align 8
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %24 = call i32 @ahc_lock(%struct.ahc_softc* %23, i64* %8)
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %32, void (%struct.scsi_cmnd*)** %34, align 8
  %35 = load i32, i32* @CAM_REQ_INPROG, align 4
  %36 = shl i32 %35, 16
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %40 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %42 = call i32 @ahc_linux_run_command(%struct.ahc_softc* %39, %struct.ahc_linux_device* %40, %struct.scsi_cmnd* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %31, %2
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %45 = call i32 @ahc_unlock(%struct.ahc_softc* %44, i64* %8)
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.ahc_linux_device* @scsi_transport_device_data(%struct.TYPE_6__*) #1

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i64*) #1

declare dso_local i32 @ahc_linux_run_command(%struct.ahc_softc*, %struct.ahc_linux_device*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
