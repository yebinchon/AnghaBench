; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_scan_restart_delayed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_scan.c_cw1200_scan_restart_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CW1200_JOIN_STATUS_MONITOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"[CQM] Requeue BSS loss.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cw1200_common*)* @cw1200_scan_restart_delayed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_scan_restart_delayed(%struct.cw1200_common* %0) #0 {
  %2 = alloca %struct.cw1200_common*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %2, align 8
  %3 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %4 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CW1200_JOIN_STATUS_MONITOR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %10 = call i32 @cw1200_enable_listening(%struct.cw1200_common* %9)
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %12 = call i32 @cw1200_update_filtering(%struct.cw1200_common* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %15 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %20 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %19, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %22 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 4
  %26 = call i64 @queue_work(i32 %23, i32* %25)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %30 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %29)
  br label %31

31:                                               ; preds = %28, %18
  br label %49

32:                                               ; preds = %13
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %39 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wiphy_dbg(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %45 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.cw1200_common*, %struct.cw1200_common** %2, align 8
  %47 = call i32 @cw1200_cqm_bssloss_sm(%struct.cw1200_common* %46, i32 1, i32 0, i32 0)
  br label %48

48:                                               ; preds = %37, %32
  br label %49

49:                                               ; preds = %48, %31
  ret void
}

declare dso_local i32 @cw1200_enable_listening(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_update_filtering(%struct.cw1200_common*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @wiphy_dbg(i32, i8*) #1

declare dso_local i32 @cw1200_cqm_bssloss_sm(%struct.cw1200_common*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
