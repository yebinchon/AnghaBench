; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2_do_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2_do_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2fb_par = type { i32 }

@currentpar = common dso_local global %struct.pvr2fb_par* null, align 8
@DISP_DIWCONF = common dso_local global i32 0, align 4
@do_blank = common dso_local global i64 0, align 8
@BLANK_BIT = common dso_local global i64 0, align 8
@is_blanked = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pvr2_do_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_do_blank() #0 {
  %1 = alloca %struct.pvr2fb_par*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** @currentpar, align 8
  store %struct.pvr2fb_par* %3, %struct.pvr2fb_par** %1, align 8
  %4 = load i32, i32* @DISP_DIWCONF, align 4
  %5 = call i64 @fb_readl(i32 %4)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* @do_blank, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @BLANK_BIT, align 8
  %11 = or i64 %9, %10
  %12 = load i32, i32* @DISP_DIWCONF, align 4
  %13 = call i32 @fb_writel(i64 %11, i32 %12)
  br label %21

14:                                               ; preds = %0
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @BLANK_BIT, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = load i32, i32* @DISP_DIWCONF, align 4
  %20 = call i32 @fb_writel(i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %8
  %22 = load i64, i64* @do_blank, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @do_blank, align 8
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %26 ]
  store i64 %28, i64* @is_blanked, align 8
  ret void
}

declare dso_local i64 @fb_readl(i32) #1

declare dso_local i32 @fb_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
