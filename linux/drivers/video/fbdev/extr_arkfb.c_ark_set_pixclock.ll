; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_ark_set_pixclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_ark_set_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.arkfb_info* }
%struct.arkfb_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"cannot set requested pixclock, keeping old value\0A\00", align 1
@VGA_MIS_R = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@VGA_MIS_ENB_PLL_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @ark_set_pixclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ark_set_pixclock(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arkfb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.arkfb_info*, %struct.arkfb_info** %9, align 8
  store %struct.arkfb_info* %10, %struct.arkfb_info** %5, align 8
  %11 = load %struct.arkfb_info*, %struct.arkfb_info** %5, align 8
  %12 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 1000000000, %14
  %16 = call i32 @dac_set_freq(i32 %13, i32 0, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = call i32 @fb_err(%struct.fb_info* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.arkfb_info*, %struct.arkfb_info** %5, align 8
  %24 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VGA_MIS_R, align 4
  %28 = call i32 @vga_r(i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.arkfb_info*, %struct.arkfb_info** %5, align 8
  %30 = getelementptr inbounds %struct.arkfb_info, %struct.arkfb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VGA_MIS_W, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @VGA_MIS_ENB_PLL_LOAD, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @vga_w(i32 %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @dac_set_freq(i32, i32, i32) #1

declare dso_local i32 @fb_err(%struct.fb_info*, i8*) #1

declare dso_local i32 @vga_r(i32, i32) #1

declare dso_local i32 @vga_w(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
