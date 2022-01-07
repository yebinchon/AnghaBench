; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_pci_test_register_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_pci_test_register_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i64 0, align 8
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@CHIPRST = common dso_local global i32 0, align 4
@AHC_NO_BIOS_INIT = common dso_local global i32 0, align 4
@PAUSE = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i64 0, align 8
@CLRINT = common dso_local global i32 0, align 4
@CLRPARERR = common dso_local global i32 0, align 4
@SEQCTL = common dso_local global i32 0, align 4
@PERRORDIS = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i32 0, align 4
@SCB_BASE = common dso_local global i32 0, align 4
@STA = common dso_local global i32 0, align 4
@FAILDIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_pci_test_register_access(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %7 = load i32, i32* @EIO, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @PCIR_COMMAND, align 8
  %12 = call i32 @ahc_pci_read_config(i32 %10, i64 %11, i32 2)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @PCIR_COMMAND, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @ahc_pci_write_config(i32 %15, i64 %16, i32 %20, i32 2)
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = load i32, i32* @HCNTRL, align 4
  %24 = call i32 @ahc_inb(%struct.ahc_softc* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %101

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CHIPRST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @AHC_NO_BIOS_INIT, align 4
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* @CHIPRST, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %45 = load i32, i32* @HCNTRL, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PAUSE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @ahc_outb(%struct.ahc_softc* %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %54, %39
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %52 = call i64 @ahc_is_paused(%struct.ahc_softc* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %50

55:                                               ; preds = %50
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @PCIR_STATUS, align 8
  %60 = add nsw i64 %59, 1
  %61 = call i32 @ahc_pci_read_config(i32 %58, i64 %60, i32 1)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @PCIR_STATUS, align 8
  %66 = add nsw i64 %65, 1
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ahc_pci_write_config(i32 %64, i64 %66, i32 %67, i32 1)
  %69 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %70 = load i32, i32* @CLRINT, align 4
  %71 = load i32, i32* @CLRPARERR, align 4
  %72 = call i32 @ahc_outb(%struct.ahc_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %74 = load i32, i32* @SEQCTL, align 4
  %75 = load i32, i32* @PERRORDIS, align 4
  %76 = call i32 @ahc_outb(%struct.ahc_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %78 = load i32, i32* @SCBPTR, align 4
  %79 = call i32 @ahc_outb(%struct.ahc_softc* %77, i32 %78, i32 0)
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %81 = load i32, i32* @SCB_BASE, align 4
  %82 = call i32 @ahc_outl(%struct.ahc_softc* %80, i32 %81, i32 1520784810)
  %83 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %84 = load i32, i32* @SCB_BASE, align 4
  %85 = call i32 @ahc_inl(%struct.ahc_softc* %83, i32 %84)
  %86 = icmp ne i32 %85, 1520784810
  br i1 %86, label %87, label %88

87:                                               ; preds = %55
  br label %101

88:                                               ; preds = %55
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %90 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @PCIR_STATUS, align 8
  %93 = add nsw i64 %92, 1
  %94 = call i32 @ahc_pci_read_config(i32 %91, i64 %93, i32 1)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @STA, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %101

100:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %99, %87, %27
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* @PCIR_STATUS, align 8
  %106 = add nsw i64 %105, 1
  %107 = call i32 @ahc_pci_read_config(i32 %104, i64 %106, i32 1)
  store i32 %107, i32* %4, align 4
  %108 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %109 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* @PCIR_STATUS, align 8
  %112 = add nsw i64 %111, 1
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @ahc_pci_write_config(i32 %110, i64 %112, i32 %113, i32 1)
  %115 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %116 = load i32, i32* @CLRINT, align 4
  %117 = load i32, i32* @CLRPARERR, align 4
  %118 = call i32 @ahc_outb(%struct.ahc_softc* %115, i32 %116, i32 %117)
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %120 = load i32, i32* @SEQCTL, align 4
  %121 = load i32, i32* @PERRORDIS, align 4
  %122 = load i32, i32* @FAILDIS, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @ahc_outb(%struct.ahc_softc* %119, i32 %120, i32 %123)
  %125 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* @PCIR_COMMAND, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @ahc_pci_write_config(i32 %127, i64 %128, i32 %129, i32 2)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @ahc_pci_read_config(i32, i64, i32) #1

declare dso_local i32 @ahc_pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i64 @ahc_is_paused(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_outl(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inl(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
