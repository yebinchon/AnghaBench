; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_iocell_first_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_iocell_first_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_HAD_FIRST_SEL = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@ENAB40 = common dso_local global i32 0, align 4
@DSPDATACTL = common dso_local global i32 0, align 4
@BYPASSENAB = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@ENSELDO = common dso_local global i32 0, align 4
@ENSELDI = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_iocell_first_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_iocell_first_selection(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AHD_HAD_FIRST_SEL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %14 = call i32 @ahd_save_modes(%struct.ahd_softc* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %16 = load i32, i32* @AHD_MODE_SCSI, align 4
  %17 = load i32, i32* @AHD_MODE_SCSI, align 4
  %18 = call i32 @ahd_set_modes(%struct.ahd_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %20 = load i32, i32* @SBLKCTL, align 4
  %21 = call i32 @ahd_inb(%struct.ahd_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %23 = load i32, i32* @AHD_MODE_CFG, align 4
  %24 = load i32, i32* @AHD_MODE_CFG, align 4
  %25 = call i32 @ahd_set_modes(%struct.ahd_softc* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ENAB40, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %12
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %32 = load i32, i32* @DSPDATACTL, align 4
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %34 = load i32, i32* @DSPDATACTL, align 4
  %35 = call i32 @ahd_inb(%struct.ahd_softc* %33, i32 %34)
  %36 = load i32, i32* @BYPASSENAB, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @ahd_outb(%struct.ahd_softc* %31, i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %30, %12
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %42 = load i32, i32* @SIMODE0, align 4
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %44 = load i32, i32* @SIMODE0, align 4
  %45 = call i32 @ahd_inb(%struct.ahd_softc* %43, i32 %44)
  %46 = load i32, i32* @ENSELDO, align 4
  %47 = load i32, i32* @ENSELDI, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = call i32 @ahd_outb(%struct.ahd_softc* %41, i32 %42, i32 %50)
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %53 = load i32, i32* @CLRINT, align 4
  %54 = load i32, i32* @CLRSCSIINT, align 4
  %55 = call i32 @ahd_outb(%struct.ahd_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @ahd_restore_modes(%struct.ahd_softc* %56, i32 %57)
  %59 = load i32, i32* @AHD_HAD_FIRST_SEL, align 4
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
