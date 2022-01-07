; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_check_cmdcmpltqueues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_check_cmdcmpltqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i32, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@AHD_RUN_QOUTFIFO = common dso_local global i32 0, align 4
@AHD_RUN_TQINFIFO = common dso_local global i32 0, align 4
@AHD_TARGETROLE = common dso_local global i32 0, align 4
@AHD_TQINFIFO_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_check_cmdcmpltqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_check_cmdcmpltqueues(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %19 = call i32 @ahd_dmamap_sync(%struct.ahd_softc* %4, i32 %7, i32 %11, i32 %17, i32 8, i32 %18)
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %20, i32 0, i32 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @AHD_RUN_QOUTFIFO, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ahd_dmamap_sync(%struct.ahd_softc*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
