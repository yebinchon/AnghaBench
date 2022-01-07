; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_wm8505fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_wm8505fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.wm8505fb_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @wm8505fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8505fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.wm8505fb_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = call %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info* %18)
  store %struct.wm8505fb_info* %19, %struct.wm8505fb_info** %14, align 8
  store i32 1, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp uge i32 %20, 256
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %84

25:                                               ; preds = %6
  %26 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = mul i32 19595, %32
  %34 = load i32, i32* %10, align 4
  %35 = mul i32 38470, %34
  %36 = add i32 %33, %35
  %37 = load i32, i32* %11, align 4
  %38 = mul i32 7471, %37
  %39 = add i32 %36, %38
  %40 = lshr i32 %39, 16
  store i32 %40, i32* %11, align 4
  store i32 %40, i32* %10, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %31, %25
  %42 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %14, align 8
  %43 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %82 [
    i32 128, label %47
  ]

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %48, 16
  br i1 %49, label %50, label %81

50:                                               ; preds = %47
  %51 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %17, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %14, align 8
  %56 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = call i32 @chan_to_field(i32 %54, i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %14, align 8
  %62 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = call i32 @chan_to_field(i32 %60, i32* %64)
  %66 = load i32, i32* %16, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %14, align 8
  %70 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @chan_to_field(i32 %68, i32* %72)
  %74 = load i32, i32* %16, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %50, %47
  br label %82

82:                                               ; preds = %41, %81
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %22
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info*) #1

declare dso_local i32 @chan_to_field(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
