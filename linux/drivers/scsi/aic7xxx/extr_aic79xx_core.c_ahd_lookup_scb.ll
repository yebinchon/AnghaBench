; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_lookup_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_lookup_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scb = type { i32 }
%struct.ahd_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scb** }

@AHD_SCB_MAX = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.scb*, align 8
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @AHD_SCB_MAX, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.scb* null, %struct.scb** %3, align 8
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.scb**, %struct.scb*** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.scb*, %struct.scb** %15, i64 %16
  %18 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %18, %struct.scb** %6, align 8
  %19 = load %struct.scb*, %struct.scb** %6, align 8
  %20 = icmp ne %struct.scb* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %23 = load %struct.scb*, %struct.scb** %6, align 8
  %24 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %25 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ahd_sync_scb(%struct.ahd_softc* %22, %struct.scb* %23, i32 %26)
  br label %28

28:                                               ; preds = %21, %11
  %29 = load %struct.scb*, %struct.scb** %6, align 8
  store %struct.scb* %29, %struct.scb** %3, align 8
  br label %30

30:                                               ; preds = %28, %10
  %31 = load %struct.scb*, %struct.scb** %3, align 8
  ret %struct.scb* %31
}

declare dso_local i32 @ahd_sync_scb(%struct.ahd_softc*, %struct.scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
