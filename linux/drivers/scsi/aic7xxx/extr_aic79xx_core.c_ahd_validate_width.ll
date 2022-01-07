; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_validate_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_validate_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@AHD_WIDE = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_initiator_tinfo*, i32*, i64)* @ahd_validate_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_validate_width(%struct.ahd_softc* %0, %struct.ahd_initiator_tinfo* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca %struct.ahd_initiator_tinfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store %struct.ahd_initiator_tinfo* %1, %struct.ahd_initiator_tinfo** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %11 [
    i32 128, label %22
  ]

11:                                               ; preds = %4
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AHD_WIDE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %4, %21
  %23 = load i32*, i32** %7, align 8
  store i32 128, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %26 = icmp ne %struct.ahd_initiator_tinfo* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ROLE_TARGET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %33 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @min(i32 %36, i32 %38)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %51

41:                                               ; preds = %27
  %42 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %43 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @min(i32 %46, i32 %48)
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %31
  br label %52

52:                                               ; preds = %51, %24
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
