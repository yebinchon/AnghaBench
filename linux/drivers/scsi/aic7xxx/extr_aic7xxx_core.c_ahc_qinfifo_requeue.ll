; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_qinfifo_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_qinfifo_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.TYPE_5__*, i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@NEXT_QUEUED_SCB = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.scb*, %struct.scb*)* @ahc_qinfifo_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_qinfifo_requeue(%struct.ahc_softc* %0, %struct.scb* %1, %struct.scb* %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca %struct.scb*, align 8
  %6 = alloca %struct.scb*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store %struct.scb* %1, %struct.scb** %5, align 8
  store %struct.scb* %2, %struct.scb** %6, align 8
  %7 = load %struct.scb*, %struct.scb** %5, align 8
  %8 = icmp eq %struct.scb* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %11 = load i32, i32* @NEXT_QUEUED_SCB, align 4
  %12 = load %struct.scb*, %struct.scb** %6, align 8
  %13 = getelementptr inbounds %struct.scb, %struct.scb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ahc_outb(%struct.ahc_softc* %10, i32 %11, i32 %16)
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.scb*, %struct.scb** %6, align 8
  %20 = getelementptr inbounds %struct.scb, %struct.scb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.scb*, %struct.scb** %5, align 8
  %25 = getelementptr inbounds %struct.scb, %struct.scb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %29 = load %struct.scb*, %struct.scb** %5, align 8
  %30 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %31 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @ahc_sync_scb(%struct.ahc_softc* %28, %struct.scb* %29, i32 %32)
  br label %34

34:                                               ; preds = %18, %9
  %35 = load %struct.scb*, %struct.scb** %6, align 8
  %36 = getelementptr inbounds %struct.scb, %struct.scb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 %39, i32* %48, align 4
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.scb*, %struct.scb** %6, align 8
  %57 = getelementptr inbounds %struct.scb, %struct.scb* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %61 = load %struct.scb*, %struct.scb** %6, align 8
  %62 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %63 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @ahc_sync_scb(%struct.ahc_softc* %60, %struct.scb* %61, i32 %64)
  ret void
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_sync_scb(%struct.ahc_softc*, %struct.scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
