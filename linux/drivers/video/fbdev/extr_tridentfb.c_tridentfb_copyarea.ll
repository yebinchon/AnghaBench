; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.tridentfb_par* }
%struct.tridentfb_par = type { i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.tridentfb_par*)* }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @tridentfb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tridentfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.tridentfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.tridentfb_par*, %struct.tridentfb_par** %7, align 8
  store %struct.tridentfb_par* %8, %struct.tridentfb_par** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %18 = call i32 @cfb_copyarea(%struct.fb_info* %16, %struct.fb_copyarea* %17)
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %21 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %20, i32 0, i32 1
  %22 = load i32 (%struct.tridentfb_par*)*, i32 (%struct.tridentfb_par*)** %21, align 8
  %23 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %24 = call i32 %22(%struct.tridentfb_par* %23)
  %25 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %26 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %25, i32 0, i32 0
  %27 = load i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32)** %26, align 8
  %28 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %29 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %30 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %33 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %36 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %39 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %42 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %27(%struct.tridentfb_par* %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
