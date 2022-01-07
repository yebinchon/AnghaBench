; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8623fb.c_vt8623_set_pixclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8623fb.c_vt8623_set_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.vt8623fb_info* }
%struct.vt8623fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@vt8623_pll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot set requested pixclock, keeping old value\0A\00", align 1
@VGA_MIS_R = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@VGA_MIS_ENB_PLL_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @vt8623_set_pixclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt8623_set_pixclock(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt8623fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %12, align 8
  store %struct.vt8623fb_info* %13, %struct.vt8623fb_info** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 1000000000, %14
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @svga_compute_pll(i32* @vt8623_pll, i32 %15, i32* %6, i32* %7, i32* %8, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = call i32 @fb_err(%struct.fb_info* %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %27 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VGA_MIS_R, align 4
  %31 = call i32 @vga_r(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %33 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VGA_MIS_W, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @VGA_MIS_ENB_PLL_LOAD, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @vga_w(i32 %35, i32 %36, i32 %39)
  %41 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %42 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 6
  %48 = or i32 %45, %47
  %49 = call i32 @vga_wseq(i32 %44, i32 70, i32 %48)
  %50 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %51 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @vga_wseq(i32 %53, i32 71, i32 %54)
  %56 = call i32 @udelay(i32 1000)
  %57 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @svga_wseq_mask(i32 %60, i32 64, i32 2, i32 2)
  %62 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %63 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @svga_wseq_mask(i32 %65, i32 64, i32 0, i32 2)
  br label %67

67:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @svga_compute_pll(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @fb_err(%struct.fb_info*, i8*) #1

declare dso_local i32 @vga_r(i32, i32) #1

declare dso_local i32 @vga_w(i32, i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @svga_wseq_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
