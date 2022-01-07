; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_set_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_set_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ahc_softc = type { i32 }
%struct.ahc_tmode_tstate = type { i32 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ahc_devinfo = type { i32 }
%struct.ahc_syncrate = type { i32 }

@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHC_SYNCRATE_DT = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @ahc_linux_set_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_set_dt(%struct.scsi_target* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.ahc_tmode_tstate*, align 8
  %8 = alloca %struct.ahc_initiator_tinfo*, align 8
  %9 = alloca %struct.ahc_devinfo, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ahc_syncrate*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.Scsi_Host* @dev_to_shost(i32 %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %5, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ahc_softc**
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %23, align 8
  store %struct.ahc_softc* %24, %struct.ahc_softc** %6, align 8
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %26 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 65
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %25, i64 %29, i32 %32, i32 %35, %struct.ahc_tmode_tstate** %7)
  store %struct.ahc_initiator_tinfo* %36, %struct.ahc_initiator_tinfo** %8, align 8
  %37 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %38 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %45 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %49 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %2
  %55 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %56 = call i64 @spi_max_width(%struct.scsi_target* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %66 = call i32 @ahc_linux_set_width(%struct.scsi_target* %65, i32 1)
  br label %67

67:                                               ; preds = %64, %58
  br label %73

68:                                               ; preds = %54, %2
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 10, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %68
  br label %73

73:                                               ; preds = %72, %67
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %78 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 65
  %84 = load i32, i32* @ROLE_INITIATOR, align 4
  %85 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %9, i32 %76, i32 %79, i32 0, i64 %83, i32 %84)
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %87 = load i32, i32* @AHC_SYNCRATE_DT, align 4
  %88 = call %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc* %86, i32* %11, i32* %10, i32 %87)
  store %struct.ahc_syncrate* %88, %struct.ahc_syncrate** %14, align 8
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %90 = call i32 @ahc_lock(%struct.ahc_softc* %89, i64* %13)
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %92 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %14, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %95 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %91, %struct.ahc_devinfo* %9, %struct.ahc_syncrate* %92, i32 %93, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %103 = call i32 @ahc_unlock(%struct.ahc_softc* %102, i64* %13)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i64, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i64 @spi_max_width(%struct.scsi_target*) #1

declare dso_local i32 @ahc_linux_set_width(%struct.scsi_target*, i32) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i64, i32) #1

declare dso_local %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc*, i32*, i32*, i32) #1

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i64*) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_syncrate*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
