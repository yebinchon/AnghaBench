; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_watchdog_get_max_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_watchdog_get_max_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_chipcommon*)* @ssb_chipco_watchdog_get_max_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_chipco_watchdog_get_max_timer(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %13 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 26
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 16, i32* %4, align 4
  br label %30

20:                                               ; preds = %11
  %21 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %22 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 37
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 32, i32 24
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %19
  br label %32

31:                                               ; preds = %1
  store i32 28, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %35
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
