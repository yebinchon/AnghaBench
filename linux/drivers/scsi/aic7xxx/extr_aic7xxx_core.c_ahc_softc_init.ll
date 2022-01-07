; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_softc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_softc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, i32* }

@AHC_PCI = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@IRQMS = common dso_local global i32 0, align 4
@PAUSE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_softc_init(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %5 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @AHC_PCI, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %12 = load i32, i32* @HCNTRL, align 4
  %13 = call i32 @ahc_inb(%struct.ahc_softc* %11, i32 %12)
  %14 = load i32, i32* @IRQMS, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %10
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAUSE, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %21
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call i32* @kzalloc(i32 4, i32 %34)
  %36 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %21
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
