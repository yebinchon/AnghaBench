; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sunxvr500.c_e3d_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sunxvr500.c_e3d_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__, %struct.e3d_info* }
%struct.TYPE_2__ = type { i64 }
%struct.e3d_info = type { i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @e3d_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e3d_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.e3d_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 2
  %24 = load %struct.e3d_info*, %struct.e3d_info** %23, align 8
  store %struct.e3d_info* %24, %struct.e3d_info** %14, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp uge i32 %25, 256
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %80

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = lshr i32 %29, 8
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = lshr i32 %31, 8
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %11, align 4
  %34 = lshr i32 %33, 8
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = shl i32 %35, 24
  %37 = load i32, i32* %16, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %36, %38
  %40 = load i32, i32* %15, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %39, %41
  store i32 %42, i32* %21, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %28
  %50 = load i32, i32* %8, align 4
  %51 = icmp ult i32 %50, 16
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %21, align 4
  %54 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %49, %28
  %62 = load i32, i32* %9, align 4
  %63 = lshr i32 %62, 6
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %10, align 4
  %65 = lshr i32 %64, 6
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %11, align 4
  %67 = lshr i32 %66, 6
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = shl i32 %68, 20
  %70 = load i32, i32* %19, align 4
  %71 = shl i32 %70, 10
  %72 = or i32 %69, %71
  %73 = load i32, i32* %18, align 4
  %74 = shl i32 %73, 0
  %75 = or i32 %72, %74
  store i32 %75, i32* %21, align 4
  %76 = load %struct.e3d_info*, %struct.e3d_info** %14, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %21, align 4
  %79 = call i32 @e3d_clut_write(%struct.e3d_info* %76, i32 %77, i32 %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %61, %27
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @e3d_clut_write(%struct.e3d_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
