; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macmodes.c_mac_map_monitor_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macmodes.c_mac_map_monitor_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.monitor_map = type { i32, i32 }

@mac_monitors = common dso_local global %struct.monitor_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_map_monitor_sense(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.monitor_map*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.monitor_map*, %struct.monitor_map** @mac_monitors, align 8
  store %struct.monitor_map* %4, %struct.monitor_map** %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.monitor_map*, %struct.monitor_map** %3, align 8
  %7 = getelementptr inbounds %struct.monitor_map, %struct.monitor_map* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.monitor_map*, %struct.monitor_map** %3, align 8
  %12 = getelementptr inbounds %struct.monitor_map, %struct.monitor_map* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %21

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.monitor_map*, %struct.monitor_map** %3, align 8
  %20 = getelementptr inbounds %struct.monitor_map, %struct.monitor_map* %19, i32 1
  store %struct.monitor_map* %20, %struct.monitor_map** %3, align 8
  br label %5

21:                                               ; preds = %16, %5
  %22 = load %struct.monitor_map*, %struct.monitor_map** %3, align 8
  %23 = getelementptr inbounds %struct.monitor_map, %struct.monitor_map* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
