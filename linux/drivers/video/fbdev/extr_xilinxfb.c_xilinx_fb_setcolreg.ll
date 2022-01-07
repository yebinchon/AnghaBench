; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xilinxfb.c_xilinx_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xilinxfb.c_xilinx_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PALETTE_ENTRIES_NO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RED_SHIFT = common dso_local global i32 0, align 4
@GREEN_SHIFT = common dso_local global i32 0, align 4
@BLUE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @xilinx_fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PALETTE_ENTRIES_NO, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %65

24:                                               ; preds = %6
  %25 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = mul i32 %31, 77
  %33 = load i32, i32* %10, align 4
  %34 = mul i32 %33, 151
  %35 = add i32 %32, %34
  %36 = load i32, i32* %11, align 4
  %37 = mul i32 %36, 28
  %38 = add i32 %35, %37
  %39 = add i32 %38, 127
  %40 = lshr i32 %39, 8
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %30, %24
  %44 = load i32, i32* %9, align 4
  %45 = lshr i32 %44, 8
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = lshr i32 %46, 8
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = lshr i32 %48, 8
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @RED_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @GREEN_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @BLUE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %43, %21
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
