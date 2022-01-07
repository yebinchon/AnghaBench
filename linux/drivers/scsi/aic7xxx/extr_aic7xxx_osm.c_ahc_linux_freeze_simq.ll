; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_freeze_simq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_freeze_simq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@ALL_CHANNELS = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_linux_freeze_simq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_freeze_simq(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %5 = call i32 @ahc_lock(%struct.ahc_softc* %4, i64* %3)
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @scsi_block_requests(i32 %23)
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %26 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %27 = load i32, i32* @ALL_CHANNELS, align 4
  %28 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %29 = load i32, i32* @SCB_LIST_NULL, align 4
  %30 = load i32, i32* @ROLE_INITIATOR, align 4
  %31 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %32 = call i32 @ahc_platform_abort_scbs(%struct.ahc_softc* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %18, %1
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %35 = call i32 @ahc_unlock(%struct.ahc_softc* %34, i64* %3)
  ret void
}

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i64*) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @ahc_platform_abort_scbs(%struct.ahc_softc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
