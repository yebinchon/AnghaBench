; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wsm_scan = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"[SCAN] hw req, type %d, %d channels, flags: 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_scan*)* @cw1200_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_scan_start(%struct.cw1200_common* %0, %struct.wsm_scan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_scan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_scan* %1, %struct.wsm_scan** %5, align 8
  store i32 2000, i32* %8, align 4
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %15 [
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %98

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %18 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %17, i32 0, i32 6
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %23 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %26 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %29 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @wiphy_dbg(i32 %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %52, %16
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %35 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %40 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 10
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 5
  %58 = call i32 @cancel_delayed_work_sync(i32* %57)
  %59 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %60 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = call i32 @atomic_set(i32* %61, i32 1)
  %63 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %64 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %63, i32 0, i32 4
  %65 = call i32 @atomic_set(i32* %64, i32 1)
  %66 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %67 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %66, i32 0, i32 3
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @msecs_to_jiffies(i32 %68)
  %70 = call i32 @cw1200_pm_stay_awake(i32* %67, i32 %69)
  %71 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %72 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %75 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @msecs_to_jiffies(i32 %77)
  %79 = call i32 @queue_delayed_work(i32 %73, i32* %76, i32 %78)
  %80 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %81 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %82 = call i32 @wsm_scan(%struct.cw1200_common* %80, %struct.wsm_scan* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %55
  %86 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %87 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = call i32 @atomic_set(i32* %88, i32 0)
  %90 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %91 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @cancel_delayed_work_sync(i32* %92)
  %94 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %95 = call i32 @cw1200_scan_restart_delayed(%struct.cw1200_common* %94)
  br label %96

96:                                               ; preds = %85, %55
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %12
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @wiphy_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cw1200_pm_stay_awake(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @wsm_scan(%struct.cw1200_common*, %struct.wsm_scan*) #1

declare dso_local i32 @cw1200_scan_restart_delayed(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
