; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipcommon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipcommon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@SSB_CHIPCO_CHIPSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"chipcommon status is 0x%x\0A\00", align 1
@SSB_CHIPCO_GPIOPULLUP = common dso_local global i32 0, align 4
@SSB_CHIPCO_GPIOPULLDOWN = common dso_local global i32 0, align 4
@SSB_CLKMODE_FAST = common dso_local global i32 0, align 4
@SSB_BUSTYPE_SSB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_chipcommon_init(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca %struct.ssb_chipcommon*, align 8
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %2, align 8
  %3 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %4 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %3, i32 0, i32 2
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %81

8:                                                ; preds = %1
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %10 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %9, i32 0, i32 4
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %13 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 11
  br i1 %18, label %19, label %25

19:                                               ; preds = %8
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %21 = load i32, i32* @SSB_CHIPCO_CHIPSTAT, align 4
  %22 = call i32 @chipco_read32(%struct.ssb_chipcommon* %20, i32 %21)
  %23 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %24 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %19, %8
  %26 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %27 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %32 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %36 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 20
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %44 = load i32, i32* @SSB_CHIPCO_GPIOPULLUP, align 4
  %45 = call i32 @chipco_write32(%struct.ssb_chipcommon* %43, i32 %44, i32 0)
  %46 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %47 = load i32, i32* @SSB_CHIPCO_GPIOPULLDOWN, align 4
  %48 = call i32 @chipco_write32(%struct.ssb_chipcommon* %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %42, %25
  %50 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %51 = call i32 @ssb_pmu_init(%struct.ssb_chipcommon* %50)
  %52 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %53 = call i32 @chipco_powercontrol_init(%struct.ssb_chipcommon* %52)
  %54 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %55 = load i32, i32* @SSB_CLKMODE_FAST, align 4
  %56 = call i32 @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %54, i32 %55)
  %57 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %58 = call i32 @calc_fast_powerup_delay(%struct.ssb_chipcommon* %57)
  %59 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %60 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SSB_BUSTYPE_SSB, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %49
  %69 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %70 = call i32 @ssb_chipco_watchdog_ticks_per_ms(%struct.ssb_chipcommon* %69)
  %71 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %72 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %74 = call i32 @ssb_chipco_watchdog_get_max_timer(%struct.ssb_chipcommon* %73)
  %75 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %76 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %74, %77
  %79 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %80 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %7, %68, %49
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @ssb_pmu_init(%struct.ssb_chipcommon*) #1

declare dso_local i32 @chipco_powercontrol_init(%struct.ssb_chipcommon*) #1

declare dso_local i32 @ssb_chipco_set_clockmode(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @calc_fast_powerup_delay(%struct.ssb_chipcommon*) #1

declare dso_local i32 @ssb_chipco_watchdog_ticks_per_ms(%struct.ssb_chipcommon*) #1

declare dso_local i32 @ssb_chipco_watchdog_get_max_timer(%struct.ssb_chipcommon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
