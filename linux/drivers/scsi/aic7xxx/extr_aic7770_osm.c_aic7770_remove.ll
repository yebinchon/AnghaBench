; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7770_osm.c_aic7770_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7770_osm.c_aic7770_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @aic7770_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7770_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.ahc_softc* @dev_get_drvdata(%struct.device* %5)
  store %struct.ahc_softc* %6, %struct.ahc_softc** %3, align 8
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @scsi_remove_host(i64 %23)
  br label %25

25:                                               ; preds = %18, %11, %1
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %27 = call i32 @ahc_lock(%struct.ahc_softc* %26, i32* %4)
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @ahc_intr_enable(%struct.ahc_softc* %28, i32 %29)
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %32 = call i32 @ahc_unlock(%struct.ahc_softc* %31, i32* %4)
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %34 = call i32 @ahc_free(%struct.ahc_softc* %33)
  ret i32 0
}

declare dso_local %struct.ahc_softc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scsi_remove_host(i64) #1

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i32*) #1

declare dso_local i32 @ahc_intr_enable(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i32*) #1

declare dso_local i32 @ahc_free(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
