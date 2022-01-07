; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mmpfb_info* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mmpfb_info = type { i32* }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @mmpfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmpfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.mmpfb_info*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  %17 = load %struct.mmpfb_info*, %struct.mmpfb_info** %16, align 8
  store %struct.mmpfb_info* %17, %struct.mmpfb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %6
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %25, 16
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = call i32 @chan_to_field(i32 %28, i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @chan_to_field(i32 %33, i32* %36)
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @chan_to_field(i32 %40, i32* %43)
  %45 = load i32, i32* %14, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.mmpfb_info*, %struct.mmpfb_info** %13, align 8
  %49 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %27, %24, %6
  %55 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = icmp ult i32 %62, 256
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @to_rgb(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %64, %61, %54
  ret i32 0
}

declare dso_local i32 @chan_to_field(i32, i32*) #1

declare dso_local i32 @to_rgb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
