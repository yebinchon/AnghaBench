; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_pcomp_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_pcomp_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_linux_iocell_opts = type { i32 }
%struct.scsi_target = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ahd_softc = type { i64 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ahd_devinfo = type { i32 }

@MSG_EXT_PPR_PCOMP_EN = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@aic79xx_iocell_info = common dso_local global %struct.ahd_linux_iocell_opts* null, align 8
@AIC79XX_DEFAULT_PRECOMP = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHD_SYNCRATE_MAX = common dso_local global i32 0, align 4
@AHD_SYNCRATE_ULTRA2 = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AHD_SHOW_DV = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @ahd_linux_set_pcomp_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_linux_set_pcomp_en(%struct.scsi_target* %0, i32 %1) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca %struct.ahd_linux_iocell_opts*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.Scsi_Host* @dev_to_shost(i32 %19)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %5, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ahd_softc**
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %24, align 8
  store %struct.ahd_softc* %25, %struct.ahd_softc** %6, align 8
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %27 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 65
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %26, i64 %30, i32 %33, i32 %36, %struct.ahd_tmode_tstate** %7)
  store %struct.ahd_initiator_tinfo* %37, %struct.ahd_initiator_tinfo** %8, align 8
  %38 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %39 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MSG_EXT_PPR_PCOMP_EN, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %46 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %2
  %55 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %56 = call i64 @spi_max_width(%struct.scsi_target* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %60 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** @aic79xx_iocell_info, align 8
  %63 = call i64 @ARRAY_SIZE(%struct.ahd_linux_iocell_opts* %62)
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** @aic79xx_iocell_info, align 8
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %68 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %66, i64 %69
  store %struct.ahd_linux_iocell_opts* %70, %struct.ahd_linux_iocell_opts** %15, align 8
  %71 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** %15, align 8
  %72 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  br label %76

74:                                               ; preds = %58
  %75 = load i32, i32* @AIC79XX_DEFAULT_PRECOMP, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i32, i32* @MSG_EXT_PPR_PCOMP_EN, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @AHD_SET_PRECOMP(%struct.ahd_softc* %80, i32 %81)
  br label %86

83:                                               ; preds = %54, %2
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %85 = call i32 @AHD_SET_PRECOMP(%struct.ahd_softc* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %94 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 65
  %97 = load i32, i32* @ROLE_INITIATOR, align 4
  %98 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %9, i32 %89, i32 %92, i32 0, i64 %96, i32 %97)
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load i32, i32* @AHD_SYNCRATE_MAX, align 4
  br label %106

104:                                              ; preds = %86
  %105 = load i32, i32* @AHD_SYNCRATE_ULTRA2, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = call i32 @ahd_find_syncrate(%struct.ahd_softc* %99, i32* %11, i32* %10, i32 %107)
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %110 = call i32 @ahd_lock(%struct.ahd_softc* %109, i64* %13)
  %111 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %114 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %119 = load i32, i32* @FALSE, align 4
  %120 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %111, %struct.ahd_devinfo* %9, i32 %112, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %122 = call i32 @ahd_unlock(%struct.ahd_softc* %121, i64* %13)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i64, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i64 @spi_max_width(%struct.scsi_target*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.ahd_linux_iocell_opts*) #1

declare dso_local i32 @AHD_SET_PRECOMP(%struct.ahd_softc*, i32) #1

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
