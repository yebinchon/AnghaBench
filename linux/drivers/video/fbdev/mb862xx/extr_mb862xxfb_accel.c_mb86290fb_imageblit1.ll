; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_imageblit1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_imageblit1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_image = type { i8*, i32 }
%struct.fb_info = type { i32 }

@GDC_TYPE_SETREGISTER = common dso_local global i32 0, align 4
@GDC_REG_MODE_BITMAP = common dso_local global i32 0, align 4
@GDC_ROP_COPY = common dso_local global i32 0, align 4
@GDC_TYPE_SETCOLORREGISTER = common dso_local global i32 0, align 4
@GDC_CMD_BODY_FORE_COLOR = common dso_local global i32 0, align 4
@GDC_CMD_BODY_BACK_COLOR = common dso_local global i32 0, align 4
@GDC_TYPE_DRAWBITMAPP = common dso_local global i32 0, align 4
@GDC_CMD_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32, %struct.fb_image*, %struct.fb_info*)* @mb86290fb_imageblit1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb86290fb_imageblit1(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_image* %8, %struct.fb_info* %9) #0 {
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
  %24 = load i32, i32* @GDC_TYPE_SETREGISTER, align 4
  %25 = shl i32 %24, 24
  %26 = or i32 %25, 65536
  %27 = load i32, i32* @GDC_REG_MODE_BITMAP, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @GDC_ROP_COPY, align 4
  %32 = shl i32 %31, 9
  %33 = or i32 256, %32
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @GDC_TYPE_SETCOLORREGISTER, align 4
  %37 = shl i32 %36, 24
  %38 = load i32, i32* @GDC_CMD_BODY_FORE_COLOR, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %37, %39
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @GDC_TYPE_SETCOLORREGISTER, align 4
  %47 = shl i32 %46, 24
  %48 = load i32, i32* @GDC_CMD_BODY_BACK_COLOR, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %21, align 4
  %56 = load %struct.fb_image*, %struct.fb_image** %19, align 8
  %57 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %22, align 8
  %59 = load %struct.fb_image*, %struct.fb_image** %19, align 8
  %60 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 7
  %63 = ashr i32 %62, 3
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* @GDC_TYPE_DRAWBITMAPP, align 4
  %65 = shl i32 %64, 24
  %66 = load i32, i32* @GDC_CMD_BITMAP, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %65, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %16, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 2, %71
  %73 = or i32 %68, %72
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %77, %78
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 7
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %92, %10
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %12, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 9, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load i8*, i8** %22, align 8
  %101 = load i32, i32* %12, align 4
  %102 = shl i32 %101, 2
  %103 = call i32 @memcpy(i32* %99, i8* %100, i32 %102)
  %104 = load i32, i32* %23, align 4
  %105 = load i8*, i8** %22, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %22, align 8
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %88

110:                                              ; preds = %88
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
