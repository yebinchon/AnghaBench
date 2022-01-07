; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_accel.c_NVSetPattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_accel.c_NVSetPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.nvidia_par* }
%struct.nvidia_par = type { i32 }

@PATTERN_COLOR_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32, i32, i32, i32)* @NVSetPattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVSetPattern(%struct.fb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvidia_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.nvidia_par*, %struct.nvidia_par** %13, align 8
  store %struct.nvidia_par* %14, %struct.nvidia_par** %11, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %16 = load %struct.nvidia_par*, %struct.nvidia_par** %11, align 8
  %17 = load i32, i32* @PATTERN_COLOR_0, align 4
  %18 = call i32 @NVDmaStart(%struct.fb_info* %15, %struct.nvidia_par* %16, i32 %17, i32 4)
  %19 = load %struct.nvidia_par*, %struct.nvidia_par** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @NVDmaNext(%struct.nvidia_par* %19, i32 %20)
  %22 = load %struct.nvidia_par*, %struct.nvidia_par** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @NVDmaNext(%struct.nvidia_par* %22, i32 %23)
  %25 = load %struct.nvidia_par*, %struct.nvidia_par** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @NVDmaNext(%struct.nvidia_par* %25, i32 %26)
  %28 = load %struct.nvidia_par*, %struct.nvidia_par** %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @NVDmaNext(%struct.nvidia_par* %28, i32 %29)
  ret void
}

declare dso_local i32 @NVDmaStart(%struct.fb_info*, %struct.nvidia_par*, i32, i32) #1

declare dso_local i32 @NVDmaNext(%struct.nvidia_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
