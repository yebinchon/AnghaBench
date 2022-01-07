; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7890_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7890_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i8, i32, i32, i32, i32, i32, i32 }

@AHC_AIC7890 = common dso_local global i32 0, align 4
@AHC_AIC7890_FE = common dso_local global i32 0, align 4
@AHC_NEWEEPROM_FMT = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@AHC_AUTOFLUSH_BUG = common dso_local global i32 0, align 4
@AHC_CACHETHEN_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_aic7890_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_aic7890_setup(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 0
  store i8 65, i8* %9, align 4
  %10 = load i32, i32* @AHC_AIC7890, align 4
  %11 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @AHC_AIC7890_FE, align 4
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @AHC_NEWEEPROM_FMT, align 4
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PCIR_REVID, align 4
  %23 = call i64 @ahc_pci_read_config(i32 %21, i32 %22, i32 1)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load i32, i32* @AHC_AUTOFLUSH_BUG, align 4
  %28 = load i32, i32* @AHC_CACHETHEN_BUG, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 2
  store i32 768, i32* %36, align 4
  ret i32 0
}

declare dso_local i64 @ahc_pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
