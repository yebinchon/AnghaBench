; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_write_first_pixel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_write_first_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { i32*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 (...)*, i32 (i32, %struct.omapfb_update_window*, i32*, i32*)* }
%struct.omapfb_update_window = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@OMAPFB_MANUAL_UPDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omapfb_write_first_pixel(%struct.omapfb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_update_window, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %7 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %10 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32 %8, i32* %16, align 4
  %17 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %18 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64 (...)*, i64 (...)** %20, align 8
  %22 = call i64 (...) %21()
  %23 = load i64, i64* @OMAPFB_MANUAL_UPDATE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.omapfb_update_window* %5, i32 0, i32 16)
  %27 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %5, i32 0, i32 0
  store i32 2, i32* %27, align 4
  %28 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %5, i32 0, i32 1
  store i32 2, i32* %28, align 4
  %29 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %5, i32 0, i32 2
  store i32 2, i32* %29, align 4
  %30 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %5, i32 0, i32 3
  store i32 2, i32* %30, align 4
  %31 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %32 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32 (i32, %struct.omapfb_update_window*, i32*, i32*)*, i32 (i32, %struct.omapfb_update_window*, i32*, i32*)** %34, align 8
  %36 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %37 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %35(i32 %40, %struct.omapfb_update_window* %5, i32* null, i32* null)
  br label %42

42:                                               ; preds = %25, %2
  %43 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %44 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %43)
  ret void
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @memset(%struct.omapfb_update_window*, i32, i32) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
