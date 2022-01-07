; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_aty128_flush_pixel_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_aty128_flush_pixel_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aty128fb_par = type { i32 }

@PC_NGUI_CTLSTAT = common dso_local global i32 0, align 4
@PC_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aty128fb_par*)* @aty128_flush_pixel_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty128_flush_pixel_cache(%struct.aty128fb_par* %0) #0 {
  %2 = alloca %struct.aty128fb_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aty128fb_par* %0, %struct.aty128fb_par** %2, align 8
  %5 = load i32, i32* @PC_NGUI_CTLSTAT, align 4
  %6 = call i32 @aty_ld_le32(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, -256
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, 255
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @PC_NGUI_CTLSTAT, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @aty_st_le32(i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %25, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 2000000
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i32, i32* @PC_NGUI_CTLSTAT, align 4
  %19 = call i32 @aty_ld_le32(i32 %18)
  %20 = load i32, i32* @PC_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @aty_ld_le32(i32) #1

declare dso_local i32 @aty_st_le32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
