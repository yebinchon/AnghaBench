; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcmap.c_fb_default_cmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcmap.c_fb_default_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i32 }

@default_2_colors = common dso_local global %struct.fb_cmap zeroinitializer, align 4
@default_4_colors = common dso_local global %struct.fb_cmap zeroinitializer, align 4
@default_8_colors = common dso_local global %struct.fb_cmap zeroinitializer, align 4
@default_16_colors = common dso_local global %struct.fb_cmap zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fb_cmap* @fb_default_cmap(i32 %0) #0 {
  %2 = alloca %struct.fb_cmap*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.fb_cmap* @default_2_colors, %struct.fb_cmap** %2, align 8
  br label %16

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store %struct.fb_cmap* @default_4_colors, %struct.fb_cmap** %2, align 8
  br label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store %struct.fb_cmap* @default_8_colors, %struct.fb_cmap** %2, align 8
  br label %16

15:                                               ; preds = %11
  store %struct.fb_cmap* @default_16_colors, %struct.fb_cmap** %2, align 8
  br label %16

16:                                               ; preds = %15, %14, %10, %6
  %17 = load %struct.fb_cmap*, %struct.fb_cmap** %2, align 8
  ret %struct.fb_cmap* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
