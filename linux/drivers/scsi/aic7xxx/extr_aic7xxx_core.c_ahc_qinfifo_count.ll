; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_qinfifo_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_qinfifo_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }

@AHC_QUEUE_REGS = common dso_local global i32 0, align 4
@SNSCB_QOFF = common dso_local global i32 0, align 4
@QINPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_qinfifo_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_qinfifo_count(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AHC_QUEUE_REGS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %13 = load i32, i32* @SNSCB_QOFF, align 4
  %14 = call i32 @ahc_inb(%struct.ahc_softc* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %16 = load i32, i32* @SNSCB_QOFF, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ahc_outb(%struct.ahc_softc* %15, i32 %16, i32 %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %21 = load i32, i32* @QINPOS, align 4
  %22 = call i32 @ahc_inb(%struct.ahc_softc* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %11
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
