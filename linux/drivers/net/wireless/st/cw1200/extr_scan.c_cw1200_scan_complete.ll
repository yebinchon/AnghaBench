; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[SCAN] Direct probe complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*)* @cw1200_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_scan_complete(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %3 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %4 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %7 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %6, i32 0, i32 2
  %8 = load i32, i32* @HZ, align 4
  %9 = call i32 @queue_delayed_work(i32 %5, i32* %7, i32 %8)
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %11 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %17 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wiphy_dbg(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %23 = call i32 @cw1200_scan_restart_delayed(%struct.cw1200_common* %22)
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @up(i32* %29)
  %31 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %32 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %31)
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %35 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @cw1200_scan_work(i32* %36)
  br label %38

38:                                               ; preds = %33, %15
  ret void
}

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @wiphy_dbg(i32, i8*) #1

declare dso_local i32 @cw1200_scan_restart_delayed(%struct.cw1200_common*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_scan_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
