; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_wait_for_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_wait_for_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aty128fb_par = type { i64 }

@GUI_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aty128fb_par*)* @wait_for_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_idle(%struct.aty128fb_par* %0) #0 {
  %2 = alloca %struct.aty128fb_par*, align 8
  %3 = alloca i32, align 4
  store %struct.aty128fb_par* %0, %struct.aty128fb_par** %2, align 8
  %4 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %5 = call i32 @do_wait_for_fifo(i32 64, %struct.aty128fb_par* %4)
  br label %6

6:                                                ; preds = %24, %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %21, %6
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2000000
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load i32, i32* @GUI_STAT, align 4
  %12 = call i32 @aty_ld_le32(i32 %11)
  %13 = and i32 %12, -2147483648
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %17 = call i32 @aty128_flush_pixel_cache(%struct.aty128fb_par* %16)
  %18 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %19 = getelementptr inbounds %struct.aty128fb_par, %struct.aty128fb_par* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  ret void

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %26 = call i32 @aty128_reset_engine(%struct.aty128fb_par* %25)
  br label %6
}

declare dso_local i32 @do_wait_for_fifo(i32, %struct.aty128fb_par*) #1

declare dso_local i32 @aty_ld_le32(i32) #1

declare dso_local i32 @aty128_flush_pixel_cache(%struct.aty128fb_par*) #1

declare dso_local i32 @aty128_reset_engine(%struct.aty128fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
