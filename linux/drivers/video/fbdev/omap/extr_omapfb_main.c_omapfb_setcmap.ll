; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_setcmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_setcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i32*, i32*, i32*, i32*, i32, i32 }
%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cmap*, %struct.fb_info*)* @omapfb_setcmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_setcmap(%struct.fb_cmap* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store i32 65535, i32* %13, align 4
  %14 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %15 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %18 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %21 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %24 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %12, align 8
  %26 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %27 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %69, %2
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %32 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %12, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %10, align 8
  %51 = load i32, i32* %49, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %11, align 8
  %54 = load i32, i32* %52, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %58 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp eq i32 %56, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @_setcolreg(%struct.fb_info* %43, i32 %44, i32 %48, i32 %51, i32 %54, i32 %55, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %29

72:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %66
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @_setcolreg(%struct.fb_info*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
