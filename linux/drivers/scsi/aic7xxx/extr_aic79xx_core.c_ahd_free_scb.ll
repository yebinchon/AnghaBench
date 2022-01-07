; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_free_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_free_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ahd_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32** }
%struct.scb = type { i32, %struct.scb*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SCB_FLAG_NONE = common dso_local global i32 0, align 4
@links = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SCB_ON_COL_LIST = common dso_local global i32 0, align 4
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@SCB_ACTIVE = common dso_local global i32 0, align 4
@TAG_ENB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_free_scb(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %5 = load i32, i32* @SCB_FLAG_NONE, align 4
  %6 = load %struct.scb*, %struct.scb** %4, align 8
  %7 = getelementptr inbounds %struct.scb, %struct.scb* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.scb*, %struct.scb** %4, align 8
  %9 = getelementptr inbounds %struct.scb, %struct.scb* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load %struct.scb*, %struct.scb** %4, align 8
  %17 = call i64 @SCB_GET_TAG(%struct.scb* %16)
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  store i32* null, i32** %18, align 8
  %19 = load %struct.scb*, %struct.scb** %4, align 8
  %20 = getelementptr inbounds %struct.scb, %struct.scb* %19, i32 0, i32 1
  %21 = load %struct.scb*, %struct.scb** %20, align 8
  %22 = icmp eq %struct.scb* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.scb*, %struct.scb** %4, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @links, i32 0, i32 0), align 4
  %29 = call i32 @LIST_INSERT_HEAD(i32* %26, %struct.scb* %27, i32 %28)
  br label %100

30:                                               ; preds = %2
  %31 = load %struct.scb*, %struct.scb** %4, align 8
  %32 = getelementptr inbounds %struct.scb, %struct.scb* %31, i32 0, i32 1
  %33 = load %struct.scb*, %struct.scb** %32, align 8
  %34 = getelementptr inbounds %struct.scb, %struct.scb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SCB_ON_COL_LIST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %30
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %41 = load %struct.scb*, %struct.scb** %4, align 8
  %42 = getelementptr inbounds %struct.scb, %struct.scb* %41, i32 0, i32 1
  %43 = load %struct.scb*, %struct.scb** %42, align 8
  %44 = call i32 @ahd_rem_col_list(%struct.ahd_softc* %40, %struct.scb* %43)
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.scb*, %struct.scb** %4, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @links, i32 0, i32 0), align 4
  %50 = call i32 @LIST_INSERT_HEAD(i32* %47, %struct.scb* %48, i32 %49)
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.scb*, %struct.scb** %4, align 8
  %55 = getelementptr inbounds %struct.scb, %struct.scb* %54, i32 0, i32 1
  %56 = load %struct.scb*, %struct.scb** %55, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @links, i32 0, i32 0), align 4
  %58 = call i32 @LIST_INSERT_HEAD(i32* %53, %struct.scb* %56, i32 %57)
  br label %99

59:                                               ; preds = %30
  %60 = load %struct.scb*, %struct.scb** %4, align 8
  %61 = getelementptr inbounds %struct.scb, %struct.scb* %60, i32 0, i32 1
  %62 = load %struct.scb*, %struct.scb** %61, align 8
  %63 = getelementptr inbounds %struct.scb, %struct.scb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SCB_PACKETIZED, align 4
  %66 = load i32, i32* @SCB_ACTIVE, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = load i32, i32* @SCB_ACTIVE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %59
  %72 = load %struct.scb*, %struct.scb** %4, align 8
  %73 = getelementptr inbounds %struct.scb, %struct.scb* %72, i32 0, i32 1
  %74 = load %struct.scb*, %struct.scb** %73, align 8
  %75 = getelementptr inbounds %struct.scb, %struct.scb* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TAG_ENB, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %84 = load %struct.scb*, %struct.scb** %4, align 8
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %86 = load %struct.scb*, %struct.scb** %4, align 8
  %87 = getelementptr inbounds %struct.scb, %struct.scb* %86, i32 0, i32 1
  %88 = load %struct.scb*, %struct.scb** %87, align 8
  %89 = call i32 @AHD_GET_SCB_COL_IDX(%struct.ahd_softc* %85, %struct.scb* %88)
  %90 = call i32 @ahd_add_col_list(%struct.ahd_softc* %83, %struct.scb* %84, i32 %89)
  br label %98

91:                                               ; preds = %71, %59
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.scb*, %struct.scb** %4, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @links, i32 0, i32 0), align 4
  %97 = call i32 @LIST_INSERT_HEAD(i32* %94, %struct.scb* %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %82
  br label %99

99:                                               ; preds = %98, %39
  br label %100

100:                                              ; preds = %99, %23
  %101 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %102 = load %struct.scb*, %struct.scb** %4, align 8
  %103 = call i32 @ahd_platform_scb_free(%struct.ahd_softc* %101, %struct.scb* %102)
  ret void
}

declare dso_local i64 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_rem_col_list(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_add_col_list(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @AHD_GET_SCB_COL_IDX(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_platform_scb_free(%struct.ahd_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
