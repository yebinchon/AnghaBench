; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ahc_softc = type { i32 }
%struct.ahc_tmode_tstate = type { i32 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ahc_devinfo = type { i32 }
%struct.ahc_syncrate = type { i32 }

@MAX_OFFSET = common dso_local global i64 0, align 8
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@AHC_SYNCRATE_DT = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @ahc_linux_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_set_period(%struct.scsi_target* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.ahc_tmode_tstate*, align 8
  %8 = alloca %struct.ahc_initiator_tinfo*, align 8
  %9 = alloca %struct.ahc_devinfo, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ahc_syncrate*, align 8
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
  %22 = inttoptr i64 %21 to %struct.ahc_softc**
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %22, align 8
  store %struct.ahc_softc* %23, %struct.ahc_softc** %6, align 8
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
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
  %35 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %24, i64 %28, i32 %31, i32 %34, %struct.ahc_tmode_tstate** %7)
  store %struct.ahc_initiator_tinfo* %35, %struct.ahc_initiator_tinfo** %8, align 8
  %36 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %37 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %41 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i64, i64* @MAX_OFFSET, align 8
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %46, %2
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 9
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 9, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %57 = call i64 @spi_max_width(%struct.scsi_target* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %64

63:                                               ; preds = %55
  store i32 10, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %59
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %67 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %73 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 65
  %76 = load i32, i32* @ROLE_INITIATOR, align 4
  %77 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %9, i32 %68, i32 %71, i32 0, i64 %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %65
  %84 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %85 = call i64 @spi_width(%struct.scsi_target* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %65
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %94 = load i32, i32* @AHC_SYNCRATE_DT, align 4
  %95 = call %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc* %93, i32* %4, i32* %10, i32 %94)
  store %struct.ahc_syncrate* %95, %struct.ahc_syncrate** %13, align 8
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %97 = call i32 @ahc_lock(%struct.ahc_softc* %96, i64* %11)
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %99 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %13, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %104 = load i32, i32* @FALSE, align 4
  %105 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %98, %struct.ahc_devinfo* %9, %struct.ahc_syncrate* %99, i32 %100, i64 %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %107 = call i32 @ahc_unlock(%struct.ahc_softc* %106, i64* %11)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i64, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i64 @spi_max_width(%struct.scsi_target*) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i64, i32) #1

declare dso_local i64 @spi_width(%struct.scsi_target*) #1

declare dso_local %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc*, i32*, i32*, i32) #1

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i64*) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_syncrate*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
