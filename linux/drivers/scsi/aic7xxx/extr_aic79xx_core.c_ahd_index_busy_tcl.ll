; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_index_busy_tcl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_index_busy_tcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@SCB_DISCONNECTED_LISTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ahd_softc*, i64*, i64)* @ahd_index_busy_tcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ahd_index_busy_tcl(%struct.ahd_softc* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %8 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %9 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %10 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %7, i32 %8, i32 %9)
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %12 = call i64 @ahd_get_scbptr(%struct.ahd_softc* %11)
  %13 = load i64*, i64** %5, align 8
  store i64 %12, i64* %13, align 8
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @TCL_LUN(i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @TCL_TARGET_OFFSET(i64 %17)
  %19 = and i32 %18, 12
  %20 = shl i32 %19, 4
  %21 = or i32 %16, %20
  %22 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %14, i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @TCL_TARGET_OFFSET(i64 %23)
  %25 = and i32 %24, 3
  %26 = shl i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @SCB_DISCONNECTED_LISTS, align 8
  %29 = add nsw i64 %27, %28
  ret i64 %29
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @TCL_LUN(i64) #1

declare dso_local i32 @TCL_TARGET_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
