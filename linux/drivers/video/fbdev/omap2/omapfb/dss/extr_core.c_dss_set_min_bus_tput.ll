; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_core.c_dss_set_min_bus_tput.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_core.c_dss_set_min_bus_tput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.omap_dss_board_info* }
%struct.omap_dss_board_info = type { i32 (%struct.device.0*, i64)* }
%struct.device.0 = type opaque
%struct.device = type { i32 }

@core = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_set_min_bus_tput(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap_dss_board_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @core, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.omap_dss_board_info*, %struct.omap_dss_board_info** %9, align 8
  store %struct.omap_dss_board_info* %10, %struct.omap_dss_board_info** %6, align 8
  %11 = load %struct.omap_dss_board_info*, %struct.omap_dss_board_info** %6, align 8
  %12 = getelementptr inbounds %struct.omap_dss_board_info, %struct.omap_dss_board_info* %11, i32 0, i32 0
  %13 = load i32 (%struct.device.0*, i64)*, i32 (%struct.device.0*, i64)** %12, align 8
  %14 = icmp ne i32 (%struct.device.0*, i64)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.omap_dss_board_info*, %struct.omap_dss_board_info** %6, align 8
  %17 = getelementptr inbounds %struct.omap_dss_board_info, %struct.omap_dss_board_info* %16, i32 0, i32 0
  %18 = load i32 (%struct.device.0*, i64)*, i32 (%struct.device.0*, i64)** %17, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = bitcast %struct.device* %19 to %struct.device.0*
  %21 = load i64, i64* %5, align 8
  %22 = call i32 %18(%struct.device.0* %20, i64 %21)
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
