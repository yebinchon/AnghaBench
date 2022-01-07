; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7860_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7860_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i8, i32, i32, i32, i32, i32 }

@AHC_AIC7860 = common dso_local global i32 0, align 4
@AHC_AIC7860_FE = common dso_local global i32 0, align 4
@AHC_TMODE_WIDEODD_BUG = common dso_local global i32 0, align 4
@AHC_CACHETHEN_BUG = common dso_local global i32 0, align 4
@AHC_PCI_MWI_BUG = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@AHC_PCI_2_1_RETRY_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_aic7860_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_aic7860_setup(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 0
  store i8 65, i8* %9, align 4
  %10 = load i32, i32* @AHC_AIC7860, align 4
  %11 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @AHC_AIC7860_FE, align 4
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @AHC_TMODE_WIDEODD_BUG, align 4
  %17 = load i32, i32* @AHC_CACHETHEN_BUG, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AHC_PCI_MWI_BUG, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PCIR_REVID, align 4
  %27 = call i32 @ahc_pci_read_config(i32 %25, i32 %26, i32 1)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @AHC_PCI_2_1_RETRY_BUG, align 4
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %37, i32 0, i32 2
  store i32 512, i32* %38, align 4
  ret i32 0
}

declare dso_local i32 @ahc_pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
