; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_imageblit16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_imageblit16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_image = type { i8*, i32 }
%struct.fb_info = type { i32 }

@GDC_TYPE_DRAWBITMAPP = common dso_local global i32 0, align 4
@GDC_CMD_BLT_DRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32, %struct.fb_image*, %struct.fb_info*)* @mb86290fb_imageblit16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb86290fb_imageblit16(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_image* %8, %struct.fb_info* %9) #0 {
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
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
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
  store i32 0, i32* %21, align 4
  %24 = load %struct.fb_image*, %struct.fb_image** %19, align 8
  %25 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %22, align 8
  %27 = load %struct.fb_image*, %struct.fb_image** %19, align 8
  %28 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 1
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* @GDC_TYPE_DRAWBITMAPP, align 4
  %32 = shl i32 %31, 24
  %33 = load i32, i32* @GDC_CMD_BLT_DRAW, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %32, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %16, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 2, %38
  %40 = or i32 %35, %39
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %16, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* %15, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %59, %10
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 3, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  %67 = load i8*, i8** %22, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @memcpy(i32* %66, i8* %67, i32 %68)
  %70 = load i32, i32* %23, align 4
  %71 = load i8*, i8** %22, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %22, align 8
  %74 = load i32, i32* %21, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %21, align 4
  br label %55

76:                                               ; preds = %55
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
