; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c___find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c___find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_pixfmt = type { i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imx_media_pixfmt* (i32, i32, i32, i32, %struct.imx_media_pixfmt*, i32)* @__find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imx_media_pixfmt* @__find_format(i32 %0, i32 %1, i32 %2, i32 %3, %struct.imx_media_pixfmt* %4, i32 %5) #0 {
  %7 = alloca %struct.imx_media_pixfmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.imx_media_pixfmt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.imx_media_pixfmt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.imx_media_pixfmt* %4, %struct.imx_media_pixfmt** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %86, %6
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %89

21:                                               ; preds = %17
  %22 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %12, align 8
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %22, i64 %24
  store %struct.imx_media_pixfmt* %25, %struct.imx_media_pixfmt** %14, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %30 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28, %21
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %40 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %28
  br label %86

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %49 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  store %struct.imx_media_pixfmt* %54, %struct.imx_media_pixfmt** %7, align 8
  br label %90

55:                                               ; preds = %47, %44
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %86

59:                                               ; preds = %55
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %82, %59
  %61 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %62 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  %72 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %70, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %14, align 8
  store %struct.imx_media_pixfmt* %80, %struct.imx_media_pixfmt** %7, align 8
  br label %90

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %60

85:                                               ; preds = %60
  br label %86

86:                                               ; preds = %85, %58, %43
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %17

89:                                               ; preds = %17
  store %struct.imx_media_pixfmt* null, %struct.imx_media_pixfmt** %7, align 8
  br label %90

90:                                               ; preds = %89, %79, %53
  %91 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  ret %struct.imx_media_pixfmt* %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
