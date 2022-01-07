; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_imageblit8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_imageblit8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_image = type { i8*, i32 }
%struct.fb_info = type { i64 }

@GDC_TYPE_DRAWBITMAPP = common dso_local global i32 0, align 4
@GDC_CMD_BLT_DRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32, %struct.fb_image*, %struct.fb_info*)* @mb86290fb_imageblit8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb86290fb_imageblit8(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_image* %8, %struct.fb_info* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.fb_image*, align 8
  %20 = alloca %struct.fb_info*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.fb_image* %8, %struct.fb_image** %19, align 8
  store %struct.fb_info* %9, %struct.fb_info** %20, align 8
  %26 = load i32, i32* @GDC_TYPE_DRAWBITMAPP, align 4
  %27 = shl i32 %26, 24
  %28 = load i32, i32* @GDC_CMD_BLT_DRAW, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %27, %29
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 2, %33
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = shl i32 %38, 16
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %16, align 4
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %15, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %21, align 4
  %50 = load %struct.fb_image*, %struct.fb_image** %19, align 8
  %51 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %24, align 8
  store i8* %52, i8** %23, align 8
  %53 = load %struct.fb_image*, %struct.fb_image** %19, align 8
  %54 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %25, align 4
  br label %56

56:                                               ; preds = %115, %10
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %122

60:                                               ; preds = %56
  %61 = load i8*, i8** %23, align 8
  store i8* %61, i8** %24, align 8
  store i32 0, i32* %22, align 4
  br label %62

62:                                               ; preds = %112, %60
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %62
  %67 = load %struct.fb_info*, %struct.fb_info** %20, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = load i8*, i8** %24, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 65535
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 3, %80
  %82 = load i32, i32* %22, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  store i32 %76, i32* %85, align 4
  %86 = load i8*, i8** %24, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %24, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %20, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load i8*, i8** %24, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 65535
  %98 = shl i32 %97, 16
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 %100, %101
  %103 = add nsw i32 3, %102
  %104 = load i32, i32* %22, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %99, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %98
  store i32 %109, i32* %107, align 4
  %110 = load i8*, i8** %24, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %24, align 8
  br label %112

112:                                              ; preds = %66
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %22, align 4
  br label %62

115:                                              ; preds = %62
  %116 = load i32, i32* %25, align 4
  %117 = load i8*, i8** %23, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %23, align 8
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %21, align 4
  br label %56

122:                                              ; preds = %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
