; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_currently_packetized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_currently_packetized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_PKTIZED_STATUS_BUG = common dso_local global i32 0, align 4
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@LQISTATE = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@LQISTAT2 = common dso_local global i32 0, align 4
@PACKETIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_currently_packetized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_currently_packetized(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = call i32 @ahd_save_modes(%struct.ahd_softc* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AHD_PKTIZED_STATUS_BUG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = load i32, i32* @AHD_MODE_CFG, align 4
  %16 = load i32, i32* @AHD_MODE_CFG, align 4
  %17 = call i32 @ahd_set_modes(%struct.ahd_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %19 = load i32, i32* @LQISTATE, align 4
  %20 = call i32 @ahd_inb(%struct.ahd_softc* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = load i32, i32* @AHD_MODE_SCSI, align 4
  %26 = load i32, i32* @AHD_MODE_SCSI, align 4
  %27 = call i32 @ahd_set_modes(%struct.ahd_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %29 = load i32, i32* @LQISTAT2, align 4
  %30 = call i32 @ahd_inb(%struct.ahd_softc* %28, i32 %29)
  %31 = load i32, i32* @PACKETIZED, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %23, %13
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ahd_restore_modes(%struct.ahd_softc* %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
