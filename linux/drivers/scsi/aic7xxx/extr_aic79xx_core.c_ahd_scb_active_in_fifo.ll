; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_scb_active_in_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_scb_active_in_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32 }

@LONGJMP_ADDR = common dso_local global i64 0, align 8
@INVALID_ADDR = common dso_local global i32 0, align 4
@SEQINTSRC = common dso_local global i64 0, align 8
@CFG4DATA = common dso_local global i32 0, align 4
@SAVEPTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, %struct.scb*)* @ahd_scb_active_in_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_scb_active_in_fifo(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.scb* %1, %struct.scb** %5, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %7 = call i64 @ahd_get_scbptr(%struct.ahd_softc* %6)
  %8 = load %struct.scb*, %struct.scb** %5, align 8
  %9 = call i64 @SCB_GET_TAG(%struct.scb* %8)
  %10 = icmp ne i64 %7, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %13 = load i64, i64* @LONGJMP_ADDR, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @ahd_inb(%struct.ahd_softc* %12, i64 %14)
  %16 = load i32, i32* @INVALID_ADDR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %21 = load i64, i64* @SEQINTSRC, align 8
  %22 = call i32 @ahd_inb(%struct.ahd_softc* %20, i64 %21)
  %23 = load i32, i32* @CFG4DATA, align 4
  %24 = load i32, i32* @SAVEPTRS, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; preds = %19, %11
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i64 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
