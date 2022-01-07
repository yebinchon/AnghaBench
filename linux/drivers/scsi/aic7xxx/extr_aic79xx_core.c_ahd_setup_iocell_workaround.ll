; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_setup_iocell_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_setup_iocell_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_CFG = common dso_local global i32 0, align 4
@DSPDATACTL = common dso_local global i32 0, align 4
@BYPASSENAB = common dso_local global i32 0, align 4
@RCVROFFSTDIS = common dso_local global i32 0, align 4
@XMITOFFSTDIS = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@ENSELDO = common dso_local global i32 0, align 4
@ENSELDI = common dso_local global i32 0, align 4
@AHD_HAD_FIRST_SEL = common dso_local global i32 0, align 4
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_setup_iocell_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_setup_iocell_workaround(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %4 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %5 = call i32 @ahd_save_modes(%struct.ahd_softc* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %7 = load i32, i32* @AHD_MODE_CFG, align 4
  %8 = load i32, i32* @AHD_MODE_CFG, align 4
  %9 = call i32 @ahd_set_modes(%struct.ahd_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %11 = load i32, i32* @DSPDATACTL, align 4
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = load i32, i32* @DSPDATACTL, align 4
  %14 = call i32 @ahd_inb(%struct.ahd_softc* %12, i32 %13)
  %15 = load i32, i32* @BYPASSENAB, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RCVROFFSTDIS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @XMITOFFSTDIS, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ahd_outb(%struct.ahd_softc* %10, i32 %11, i32 %20)
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %23 = load i32, i32* @SIMODE0, align 4
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = load i32, i32* @SIMODE0, align 4
  %26 = call i32 @ahd_inb(%struct.ahd_softc* %24, i32 %25)
  %27 = load i32, i32* @ENSELDO, align 4
  %28 = load i32, i32* @ENSELDI, align 4
  %29 = or i32 %27, %28
  %30 = or i32 %26, %29
  %31 = call i32 @ahd_outb(%struct.ahd_softc* %22, i32 %23, i32 %30)
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ahd_restore_modes(%struct.ahd_softc* %32, i32 %33)
  %35 = load i32, i32* @AHD_HAD_FIRST_SEL, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
