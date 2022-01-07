; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_accel.c_matroxfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_accel.c_matroxfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.matrox_fb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @matroxfb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.matrox_fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = call %struct.matrox_fb_info* @info2minfo(%struct.fb_info* %6)
  store %struct.matrox_fb_info* %7, %struct.matrox_fb_info** %5, align 8
  %8 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %9 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %15 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %18 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %24 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %27 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %30 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @matrox_accel_bmove(%struct.matrox_fb_info* %8, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  ret void
}

declare dso_local %struct.matrox_fb_info* @info2minfo(%struct.fb_info*) #1

declare dso_local i32 @matrox_accel_bmove(%struct.matrox_fb_info*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
