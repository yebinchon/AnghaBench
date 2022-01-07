; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.intelfb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @intelfb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intelfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.intelfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = call %struct.intelfb_info* @GET_DINFO(%struct.fb_info* %6)
  store %struct.intelfb_info* %7, %struct.intelfb_info** %5, align 8
  %8 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = call i32 @ACCEL(%struct.intelfb_info* %8, %struct.fb_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %14 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %12, %2
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %20 = call i32 @cfb_copyarea(%struct.fb_info* %18, %struct.fb_copyarea* %19)
  br label %49

21:                                               ; preds = %12
  %22 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %23 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %24 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %27 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %30 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %33 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %36 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %39 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %42 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @intelfbhw_do_bitblt(%struct.intelfb_info* %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %21, %17
  ret void
}

declare dso_local %struct.intelfb_info* @GET_DINFO(%struct.fb_info*) #1

declare dso_local i32 @ACCEL(%struct.intelfb_info*, %struct.fb_info*) #1

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @intelfbhw_do_bitblt(%struct.intelfb_info*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
