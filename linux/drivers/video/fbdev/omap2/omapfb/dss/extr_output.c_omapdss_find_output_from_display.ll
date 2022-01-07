; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_omapdss_find_output_from_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_omapdss_find_output_from_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i64, %struct.omap_dss_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_dss_device* @omapdss_find_output_from_display(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %6 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %5, i32 0, i32 1
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %8 = icmp ne %struct.omap_dss_device* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %11 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %10, i32 0, i32 1
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  store %struct.omap_dss_device* %12, %struct.omap_dss_device** %3, align 8
  br label %4

13:                                               ; preds = %4
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %20 = call %struct.omap_dss_device* @omap_dss_get_device(%struct.omap_dss_device* %19)
  store %struct.omap_dss_device* %20, %struct.omap_dss_device** %2, align 8
  br label %22

21:                                               ; preds = %13
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %2, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  ret %struct.omap_dss_device* %23
}

declare dso_local %struct.omap_dss_device* @omap_dss_get_device(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
