; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_do_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_do_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@RING_MIN_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_do_sync(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  %3 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %4 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %10 = call i32 @do_flush(%struct.intelfb_info* %9)
  %11 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %12 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %13 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RING_MIN_FREE, align 8
  %17 = sub nsw i64 %15, %16
  %18 = call i32 @wait_ring(%struct.intelfb_info* %11, i64 %17)
  %19 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %20 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RING_MIN_FREE, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %26 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @do_flush(%struct.intelfb_info*) #1

declare dso_local i32 @wait_ring(%struct.intelfb_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
