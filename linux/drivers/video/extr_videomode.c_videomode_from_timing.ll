; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_videomode.c_videomode_from_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_videomode.c_videomode_from_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_timing = type { i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @videomode_from_timing(%struct.display_timing* %0, %struct.videomode* %1) #0 {
  %3 = alloca %struct.display_timing*, align 8
  %4 = alloca %struct.videomode*, align 8
  store %struct.display_timing* %0, %struct.display_timing** %3, align 8
  store %struct.videomode* %1, %struct.videomode** %4, align 8
  %5 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %6 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %5, i32 0, i32 9
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.videomode*, %struct.videomode** %4, align 8
  %10 = getelementptr inbounds %struct.videomode, %struct.videomode* %9, i32 0, i32 9
  store i32 %8, i32* %10, align 4
  %11 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %12 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.videomode*, %struct.videomode** %4, align 8
  %16 = getelementptr inbounds %struct.videomode, %struct.videomode* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %18 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.videomode*, %struct.videomode** %4, align 8
  %22 = getelementptr inbounds %struct.videomode, %struct.videomode* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %24 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.videomode*, %struct.videomode** %4, align 8
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %30 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.videomode*, %struct.videomode** %4, align 8
  %34 = getelementptr inbounds %struct.videomode, %struct.videomode* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %36 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.videomode*, %struct.videomode** %4, align 8
  %40 = getelementptr inbounds %struct.videomode, %struct.videomode* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %42 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.videomode*, %struct.videomode** %4, align 8
  %46 = getelementptr inbounds %struct.videomode, %struct.videomode* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %48 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.videomode*, %struct.videomode** %4, align 8
  %52 = getelementptr inbounds %struct.videomode, %struct.videomode* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %54 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.videomode*, %struct.videomode** %4, align 8
  %58 = getelementptr inbounds %struct.videomode, %struct.videomode* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.display_timing*, %struct.display_timing** %3, align 8
  %60 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.videomode*, %struct.videomode** %4, align 8
  %63 = getelementptr inbounds %struct.videomode, %struct.videomode* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
