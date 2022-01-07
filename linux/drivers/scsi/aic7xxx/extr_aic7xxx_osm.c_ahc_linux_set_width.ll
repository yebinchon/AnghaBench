; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_set_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_set_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32 }

@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @ahc_linux_set_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_set_width(%struct.scsi_target* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.ahc_devinfo, align 4
  %8 = alloca i64, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.Scsi_Host* @dev_to_shost(i32 %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %5, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ahc_softc**
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %17, align 8
  store %struct.ahc_softc* %18, %struct.ahc_softc** %6, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 65
  %29 = load i32, i32* @ROLE_INITIATOR, align 4
  %30 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %7, i32 %21, i32 %24, i32 0, i64 %28, i32 %29)
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %32 = call i32 @ahc_lock(%struct.ahc_softc* %31, i64* %8)
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @ahc_set_width(%struct.ahc_softc* %33, %struct.ahc_devinfo* %7, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %39 = call i32 @ahc_unlock(%struct.ahc_softc* %38, i64* %8)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i64*) #1

declare dso_local i32 @ahc_set_width(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
