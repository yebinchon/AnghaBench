; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_queue_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_queue_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32* }
%struct.scb = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Attempt to queue invalid SCB tag %x\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@AHD_SHOW_QUEUE = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_queue_scb(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %6 = load %struct.scb*, %struct.scb** %4, align 8
  %7 = call i32 @ahd_swap_with_next_hscb(%struct.ahd_softc* %5, %struct.scb* %6)
  %8 = load %struct.scb*, %struct.scb** %4, align 8
  %9 = call i32 @SCB_GET_TAG(%struct.scb* %8)
  %10 = call i64 @SCBID_IS_NULL(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.scb*, %struct.scb** %4, align 8
  %14 = call i32 @SCB_GET_TAG(%struct.scb* %13)
  %15 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.scb*, %struct.scb** %4, align 8
  %18 = call i32 @SCB_GET_TAG(%struct.scb* %17)
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @AHD_QIN_WRAP(i32 %24)
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32 %18, i32* %26, align 4
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.scb*, %struct.scb** %4, align 8
  %32 = getelementptr inbounds %struct.scb, %struct.scb* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %16
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %37 = load %struct.scb*, %struct.scb** %4, align 8
  %38 = call i32 @ahd_setup_data_scb(%struct.ahd_softc* %36, %struct.scb* %37)
  br label %43

39:                                               ; preds = %16
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %41 = load %struct.scb*, %struct.scb** %4, align 8
  %42 = call i32 @ahd_setup_noxfer_scb(%struct.ahd_softc* %40, %struct.scb* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %45 = load %struct.scb*, %struct.scb** %4, align 8
  %46 = call i32 @ahd_setup_scb_common(%struct.ahd_softc* %44, %struct.scb* %45)
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %48 = load %struct.scb*, %struct.scb** %4, align 8
  %49 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %50 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @ahd_sync_scb(%struct.ahd_softc* %47, %struct.scb* %48, i32 %51)
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ahd_set_hnscb_qoff(%struct.ahd_softc* %53, i32 %56)
  ret void
}

declare dso_local i32 @ahd_swap_with_next_hscb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i64 @SCBID_IS_NULL(i32) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @AHD_QIN_WRAP(i32) #1

declare dso_local i32 @ahd_setup_data_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_setup_noxfer_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_setup_scb_common(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_sync_scb(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_set_hnscb_qoff(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
