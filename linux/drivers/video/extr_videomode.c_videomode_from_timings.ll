; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_videomode.c_videomode_from_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_videomode.c_videomode_from_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_timings = type { i32 }
%struct.videomode = type { i32 }
%struct.display_timing = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videomode_from_timings(%struct.display_timings* %0, %struct.videomode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.display_timings*, align 8
  %6 = alloca %struct.videomode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.display_timing*, align 8
  store %struct.display_timings* %0, %struct.display_timings** %5, align 8
  store %struct.videomode* %1, %struct.videomode** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.display_timings*, %struct.display_timings** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.display_timing* @display_timings_get(%struct.display_timings* %9, i32 %10)
  store %struct.display_timing* %11, %struct.display_timing** %8, align 8
  %12 = load %struct.display_timing*, %struct.display_timing** %8, align 8
  %13 = icmp ne %struct.display_timing* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.display_timing*, %struct.display_timing** %8, align 8
  %19 = load %struct.videomode*, %struct.videomode** %6, align 8
  %20 = call i32 @videomode_from_timing(%struct.display_timing* %18, %struct.videomode* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.display_timing* @display_timings_get(%struct.display_timings*, i32) #1

declare dso_local i32 @videomode_from_timing(%struct.display_timing*, %struct.videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
