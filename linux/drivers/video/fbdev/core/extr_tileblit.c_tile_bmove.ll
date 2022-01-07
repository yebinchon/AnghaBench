; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_tileblit.c_tile_bmove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_tileblit.c_tile_bmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*, %struct.fb_tilearea*)* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32, i32, i32)* @tile_bmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tile_bmove(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vc_data*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fb_tilearea, align 4
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store %struct.fb_info* %1, %struct.fb_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %17, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %14, align 4
  %23 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %17, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %17, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %15, align 4
  %27 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %17, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %16, align 4
  %29 = getelementptr inbounds %struct.fb_tilearea, %struct.fb_tilearea* %17, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.fb_info*, %struct.fb_tilearea*)*, i32 (%struct.fb_info*, %struct.fb_tilearea*)** %33, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %36 = call i32 %34(%struct.fb_info* %35, %struct.fb_tilearea* %17)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
