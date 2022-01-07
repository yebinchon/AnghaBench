; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_cpu_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_cpu_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_mipscore = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@SSB_PLLTYPE_5 = common dso_local global i64 0, align 8
@SSB_PLLTYPE_6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ssb_cpu_clock(%struct.ssb_mipscore* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ssb_mipscore*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ssb_mipscore* %0, %struct.ssb_mipscore** %3, align 8
  %9 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %3, align 8
  %10 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %12, align 8
  store %struct.ssb_bus* %13, %struct.ssb_bus** %4, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %15 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %23 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %22, i32 0, i32 1
  %24 = call i64 @ssb_pmu_get_cpu_clock(%struct.TYPE_6__* %23)
  store i64 %24, i64* %2, align 8
  br label %69

25:                                               ; preds = %1
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %27 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %26, i32 0, i32 2
  %28 = call i64 @ssb_extif_available(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %32 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %31, i32 0, i32 2
  %33 = call i32 @ssb_extif_get_clockcontrol(i32* %32, i64* %5, i64* %6, i64* %7)
  br label %45

34:                                               ; preds = %25
  %35 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %36 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %35, i32 0, i32 1
  %37 = call i64 @ssb_chipco_available(%struct.TYPE_6__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %41 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %40, i32 0, i32 1
  %42 = call i32 @ssb_chipco_get_clockcpu(%struct.TYPE_6__* %41, i64* %5, i64* %6, i64* %7)
  br label %44

43:                                               ; preds = %34
  store i64 0, i64* %2, align 8
  br label %69

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @SSB_PLLTYPE_5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %51 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 21349
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %45
  store i64 200000000, i64* %8, align 8
  br label %60

55:                                               ; preds = %49
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @ssb_calc_clock_rate(i64 %56, i64 %57, i64 %58)
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @SSB_PLLTYPE_6, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8
  %66 = mul nsw i64 %65, 2
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %67, %43, %21
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i64 @ssb_pmu_get_cpu_clock(%struct.TYPE_6__*) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @ssb_extif_get_clockcontrol(i32*, i64*, i64*, i64*) #1

declare dso_local i64 @ssb_chipco_available(%struct.TYPE_6__*) #1

declare dso_local i32 @ssb_chipco_get_clockcpu(%struct.TYPE_6__*, i64*, i64*, i64*) #1

declare dso_local i64 @ssb_calc_clock_rate(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
