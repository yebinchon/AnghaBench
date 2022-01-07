; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_unpause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_unpause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i64, i64, i32, i32 }

@AHD_MODE_UNKNOWN = common dso_local global i64 0, align 8
@AHD_UPDATE_PEND_CMDS = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@CMDCMPLT = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_unpause(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %3 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @AHD_MODE_UNKNOWN, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AHD_MODE_UNKNOWN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AHD_UPDATE_PEND_CMDS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %23 = call i32 @ahd_reset_cmds_pending(%struct.ahd_softc* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ahd_set_modes(%struct.ahd_softc* %25, i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %24, %8, %1
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i32, i32* @INTSTAT, align 4
  %36 = call i32 @ahd_inb(%struct.ahd_softc* %34, i32 %35)
  %37 = load i32, i32* @CMDCMPLT, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %43 = load i32, i32* @HCNTRL, align 4
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ahd_outb(%struct.ahd_softc* %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %33
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %50 = load i64, i64* @AHD_MODE_UNKNOWN, align 8
  %51 = load i64, i64* @AHD_MODE_UNKNOWN, align 8
  %52 = call i32 @ahd_known_modes(%struct.ahd_softc* %49, i64 %50, i64 %51)
  ret void
}

declare dso_local i32 @ahd_reset_cmds_pending(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i64, i64) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_known_modes(%struct.ahd_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
