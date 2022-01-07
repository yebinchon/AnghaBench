; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_do_wait_for_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_do_wait_for_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aty128fb_par = type { i32 }

@GUI_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.aty128fb_par*)* @do_wait_for_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_wait_for_fifo(i32 %0, %struct.aty128fb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aty128fb_par*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.aty128fb_par* %1, %struct.aty128fb_par** %4, align 8
  br label %6

6:                                                ; preds = %26, %2
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2000000
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32, i32* @GUI_STAT, align 4
  %12 = call i32 @aty_ld_le32(i32 %11)
  %13 = and i32 %12, 4095
  %14 = load %struct.aty128fb_par*, %struct.aty128fb_par** %4, align 8
  %15 = getelementptr inbounds %struct.aty128fb_par, %struct.aty128fb_par* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.aty128fb_par*, %struct.aty128fb_par** %4, align 8
  %17 = getelementptr inbounds %struct.aty128fb_par, %struct.aty128fb_par* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  ret void

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.aty128fb_par*, %struct.aty128fb_par** %4, align 8
  %28 = call i32 @aty128_reset_engine(%struct.aty128fb_par* %27)
  br label %6
}

declare dso_local i32 @aty_ld_le32(i32) #1

declare dso_local i32 @aty128_reset_engine(%struct.aty128fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
