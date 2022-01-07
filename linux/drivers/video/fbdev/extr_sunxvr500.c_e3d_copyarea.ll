; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sunxvr500.c_e3d_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sunxvr500.c_e3d_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.e3d_info* }
%struct.e3d_info = type { i32, i64 }
%struct.fb_copyarea = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @e3d_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e3d_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.e3d_info*, align 8
  %6 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.e3d_info*, %struct.e3d_info** %8, align 8
  store %struct.e3d_info* %9, %struct.e3d_info** %5, align 8
  %10 = load %struct.e3d_info*, %struct.e3d_info** %5, align 8
  %11 = getelementptr inbounds %struct.e3d_info, %struct.e3d_info* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %16 = call i32 @cfb_copyarea(%struct.fb_info* %14, %struct.fb_copyarea* %15)
  %17 = load %struct.e3d_info*, %struct.e3d_info** %5, align 8
  %18 = getelementptr inbounds %struct.e3d_info, %struct.e3d_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %28 = call i32 @cfb_copyarea(%struct.fb_info* %26, %struct.fb_copyarea* %27)
  %29 = load %struct.e3d_info*, %struct.e3d_info** %5, align 8
  %30 = getelementptr inbounds %struct.e3d_info, %struct.e3d_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  %38 = load %struct.e3d_info*, %struct.e3d_info** %5, align 8
  %39 = getelementptr inbounds %struct.e3d_info, %struct.e3d_info* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
