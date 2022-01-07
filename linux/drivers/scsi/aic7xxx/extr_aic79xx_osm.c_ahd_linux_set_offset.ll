; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ahd_softc = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ahd_devinfo = type { i32 }

@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHD_SYNCRATE_MAX = common dso_local global i32 0, align 4
@AHD_SYNCRATE_ULTRA2 = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AHD_SHOW_DV = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @ahd_linux_set_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_linux_set_offset(%struct.scsi_target* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca %struct.ahd_tmode_tstate*, align 8
  %8 = alloca %struct.ahd_initiator_tinfo*, align 8
  %9 = alloca %struct.ahd_devinfo, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.Scsi_Host* @dev_to_shost(i32 %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %5, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ahd_softc**
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %22, align 8
  store %struct.ahd_softc* %23, %struct.ahd_softc** %6, align 8
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %25 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 65
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %24, i64 %28, i32 %31, i32 %34, %struct.ahd_tmode_tstate** %7)
  store %struct.ahd_initiator_tinfo* %35, %struct.ahd_initiator_tinfo** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 65
  %49 = load i32, i32* @ROLE_INITIATOR, align 4
  %50 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %9, i32 %41, i32 %44, i32 0, i64 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %2
  %54 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %55 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %59 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @AHD_SYNCRATE_MAX, align 4
  br label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @AHD_SYNCRATE_ULTRA2, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 @ahd_find_syncrate(%struct.ahd_softc* %62, i32* %11, i32* %10, i32 %70)
  br label %72

72:                                               ; preds = %69, %2
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %74 = call i32 @ahd_lock(%struct.ahd_softc* %73, i64* %13)
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %75, %struct.ahd_devinfo* %9, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %83 = call i32 @ahd_unlock(%struct.ahd_softc* %82, i64* %13)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i64, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ahd_find_syncrate(%struct.ahd_softc*, i32*, i32*, i32) #1

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i64*) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
