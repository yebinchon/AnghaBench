; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ahd_softc = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ahd_devinfo = type { i32 }

@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHD_SYNCRATE_MAX = common dso_local global i32 0, align 4
@AHD_SYNCRATE_ULTRA2 = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AHD_SHOW_DV = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @ahd_linux_set_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_linux_set_dt(%struct.scsi_target* %0, i32 %1) #0 {
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
  %36 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %37 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %44 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %48 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %2
  %54 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %55 = call i64 @spi_max_width(%struct.scsi_target* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %65 = call i32 @ahd_linux_set_width(%struct.scsi_target* %64, i32 1)
  br label %66

66:                                               ; preds = %63, %57
  br label %76

67:                                               ; preds = %53, %2
  %68 = load i32, i32* %11, align 4
  %69 = icmp ule i32 %68, 9
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 10, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %84 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 65
  %87 = load i32, i32* @ROLE_INITIATOR, align 4
  %88 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %9, i32 %79, i32 %82, i32 0, i64 %86, i32 %87)
  %89 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i32, i32* @AHD_SYNCRATE_MAX, align 4
  br label %96

94:                                               ; preds = %76
  %95 = load i32, i32* @AHD_SYNCRATE_ULTRA2, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 @ahd_find_syncrate(%struct.ahd_softc* %89, i32* %11, i32* %10, i32 %97)
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %100 = call i32 @ahd_lock(%struct.ahd_softc* %99, i64* %13)
  %101 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %104 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %109 = load i32, i32* @FALSE, align 4
  %110 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %101, %struct.ahd_devinfo* %9, i32 %102, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %112 = call i32 @ahd_unlock(%struct.ahd_softc* %111, i64* %13)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i64, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i64 @spi_max_width(%struct.scsi_target*) #1

declare dso_local i32 @ahd_linux_set_width(%struct.scsi_target*, i32) #1

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
