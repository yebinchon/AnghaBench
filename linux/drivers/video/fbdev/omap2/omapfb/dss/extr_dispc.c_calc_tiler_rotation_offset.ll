; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_calc_tiler_rotation_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_calc_tiler_rotation_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"scrw %d, width %d\0A\00", align 1
@OMAP_DSS_COLOR_YUV2 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_UYVY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32)* @calc_tiler_rotation_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_tiler_rotation_offset(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %27 [
    i32 131, label %25
    i32 130, label %25
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %11, %11, %11, %11
  %26 = call i32 (...) @BUG()
  br label %90

27:                                               ; preds = %11
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @color_mode_to_bpp(i32 %28)
  %30 = sdiv i32 %29, 8
  store i32 %30, i32* %23, align 4
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @DSSDBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32*, i32** %18, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load i32*, i32** %18, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul i32 %41, %42
  %44 = load i32, i32* %23, align 4
  %45 = mul i32 %43, %44
  %46 = add i32 %40, %45
  %47 = load i32*, i32** %17, align 8
  store i32 %46, i32* %47, align 4
  br label %52

48:                                               ; preds = %31
  %49 = load i32*, i32** %18, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %17, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %21, align 4
  %58 = mul i32 %56, %57
  %59 = sub i32 %55, %58
  %60 = add i32 1, %59
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %12, align 4
  br label %66

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = add i32 %60, %67
  %69 = load i32, i32* %23, align 4
  %70 = call i32 @pixinc(i32 %68, i32 %69)
  %71 = load i32*, i32** %19, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @OMAP_DSS_COLOR_YUV2, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @OMAP_DSS_COLOR_UYVY, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75, %66
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %23, align 4
  %82 = mul i32 2, %81
  %83 = call i32 @pixinc(i32 %80, i32 %82)
  %84 = load i32*, i32** %20, align 8
  store i32 %83, i32* %84, align 4
  br label %90

85:                                               ; preds = %75
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %23, align 4
  %88 = call i32 @pixinc(i32 %86, i32 %87)
  %89 = load i32*, i32** %20, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %25, %85, %79
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @color_mode_to_bpp(i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @pixinc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
