; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_stat_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_stat_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i64, i64, i32, i64*, i32 }
%struct.timer_list = type { i32 }

@stat_timer = common dso_local global i32 0, align 4
@ENINT_COALESCE = common dso_local global i32 0, align 4
@AHD_STAT_BUCKETS = common dso_local global i32 0, align 4
@AHD_STAT_UPDATE_US = common dso_local global i32 0, align 4
@AHD_SHOW_INT_COALESCING = common dso_local global i32 0, align 4
@ahd = common dso_local global %struct.ahd_softc* null, align 8
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ahd_stat_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_stat_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %7 = ptrtoint %struct.ahd_softc* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @stat_timer, align 4
  %10 = call %struct.ahd_softc* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ahd_softc* %10, %struct.ahd_softc** %3, align 8
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = call i32 @ahd_lock(%struct.ahd_softc* %11, i32* %4)
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ENINT_COALESCE, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @ENINT_COALESCE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %43

29:                                               ; preds = %1
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @ENINT_COALESCE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %29
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ENINT_COALESCE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %44, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ahd_enable_coalescing(%struct.ahd_softc* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @AHD_STAT_BUCKETS, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %59, %61
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %65, i32 0, i32 5
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %67, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %78, i32 0, i32 5
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %80, i64 %84
  store i64 0, i64* %85, align 8
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %86, i32 0, i32 6
  %88 = load i32, i32* @AHD_STAT_UPDATE_US, align 4
  %89 = call i32 @ahd_timer_reset(i32* %87, i32 %88)
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %91 = call i32 @ahd_unlock(%struct.ahd_softc* %90, i32* %4)
  ret void
}

declare dso_local %struct.ahd_softc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i32*) #1

declare dso_local i32 @ahd_enable_coalescing(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_timer_reset(i32*, i32) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
