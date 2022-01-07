; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_tt_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_tt_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fb_info = type { i32 }

@shifter_tt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TT_SHIFTER_MODEMASK = common dso_local global i32 0, align 4
@TT_SHIFTER_STHIGH = common dso_local global i32 0, align 4
@tt_palette = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @tt_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shifter_tt, i32 0, i32 0), align 4
  %15 = load i32, i32* @TT_SHIFTER_MODEMASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @TT_SHIFTER_STHIGH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %20, 254
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %6
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %23, 255
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %53

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = lshr i32 %27, 12
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %10, align 4
  %31 = lshr i32 %30, 12
  %32 = shl i32 %31, 4
  %33 = or i32 %29, %32
  %34 = load i32, i32* %11, align 4
  %35 = lshr i32 %34, 12
  %36 = or i32 %33, %35
  %37 = load i32*, i32** @tt_palette, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shifter_tt, i32 0, i32 0), align 4
  %42 = load i32, i32* @TT_SHIFTER_MODEMASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @TT_SHIFTER_STHIGH, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %26
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 254
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** @tt_palette, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46, %26
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
