; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_qinfifo_requeue_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_qinfifo_requeue_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i64*, i64 }
%struct.scb = type { i32 }

@AHD_MODE_CCHAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_qinfifo_requeue_tail(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.scb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = call i32 @ahd_save_modes(%struct.ahd_softc* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %13 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %14 = call i32 @ahd_set_modes(%struct.ahd_softc* %11, i32 %12, i32 %13)
  store %struct.scb* null, %struct.scb** %5, align 8
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = call i64 @ahd_qinfifo_count(%struct.ahd_softc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @AHD_QIN_WRAP(i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %30, i64 %31)
  store %struct.scb* %32, %struct.scb** %5, align 8
  br label %33

33:                                               ; preds = %18, %2
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %35 = load %struct.scb*, %struct.scb** %5, align 8
  %36 = load %struct.scb*, %struct.scb** %4, align 8
  %37 = call i32 @ahd_qinfifo_requeue(%struct.ahd_softc* %34, %struct.scb* %35, %struct.scb* %36)
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ahd_set_hnscb_qoff(%struct.ahd_softc* %38, i64 %41)
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ahd_restore_modes(%struct.ahd_softc* %43, i32 %44)
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_qinfifo_count(%struct.ahd_softc*) #1

declare dso_local i64 @AHD_QIN_WRAP(i64) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_qinfifo_requeue(%struct.ahd_softc*, %struct.scb*, %struct.scb*) #1

declare dso_local i32 @ahd_set_hnscb_qoff(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
