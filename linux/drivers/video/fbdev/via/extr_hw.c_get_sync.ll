; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_get_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_get_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@VIA_HSYNC_NEGATIVE = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@VIA_VSYNC_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*)* @get_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sync(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  %3 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %5 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @VIA_HSYNC_NEGATIVE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @VIA_VSYNC_NEGATIVE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
