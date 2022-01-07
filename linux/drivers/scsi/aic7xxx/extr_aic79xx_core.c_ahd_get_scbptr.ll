; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_get_scbptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_get_scbptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_UNKNOWN_MSK = common dso_local global i32 0, align 4
@AHD_MODE_CFG_MSK = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_get_scbptr(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %3 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %4 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %5 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %6 = or i32 %4, %5
  %7 = xor i32 %6, -1
  %8 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %9 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %3, i32 %7, i32 %11)
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %14 = load i64, i64* @SCBPTR, align 8
  %15 = call i32 @ahd_inb(%struct.ahd_softc* %13, i64 %14)
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %17 = load i64, i64* @SCBPTR, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @ahd_inb(%struct.ahd_softc* %16, i64 %18)
  %20 = shl i32 %19, 8
  %21 = or i32 %15, %20
  ret i32 %21
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
