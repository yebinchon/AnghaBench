; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hpfb.c_hpfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hpfb.c_hpfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@RR_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @hpfb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %5 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %6 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %9 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %12 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %15 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %18 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RR_COPY, align 4
  %24 = call i32 @topcat_blit(i32 %7, i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @topcat_blit(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
